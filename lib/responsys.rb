require 'metal/defaultDriver.rb'
require 'metal/defaultMappingRegistry.rb'

class Responsys
  TIMEOUT = 180
  MAX_MEMBERS = 200

  class TooManyMembersError < StandardError
  end

  class ResponsysTimeoutError < StandardError
  end

  class MethodsNotSupportedError < StandardError
  end

  attr_reader :session_id
  attr_reader :timeout_threshold

  # Creates a client object to connect to Responsys via SOAP API
  #
  # <username> - The login username
  # <password> - The login password
  # <options>
  #   timeout_threshold - number of seconds (default 180)
  def initialize(username, password, options = {})
    @username = username
    @password = password
    @client = ResponsysWS.new
    @keep_alive = false

    self.timeout_threshold = options[:timeout_threshold] || TIMEOUT
  end

  def timeout_threshold=(secs)
    # Sets the timeout on the internal responsys http client.
    @client.options['protocol.http.connect_timeout'] = secs
    @client.options['protocol.http.send_timeout'] = secs
    @client.options['protocol.http.receive_timeout']  = secs

    @timeout_threshold = secs
  end

  def login
    with_application_error do
      login_request = Login.new
      login_request.username = @username
      login_request.password = @password
      response = @client.login(login_request)
      @session_id = response.result.sessionId
      assign_session
    end
  end

  def assign_session
    session_header_request = SessionHeader.new(@session_id)
    @client.headerhandler << session_header_request
  end

  def logout
    begin
      logout_request = Logout.new
      @client.logout(logout_request)
    ensure
      @session_id = nil
    end
  end

  # Sends a campaign email to the list of recipients
  #
  # <campaign_name> - The type of email being sent.
  # <recipients> - A list of recipients to send the email to.

  #  Each element in the list is a hash:
  #  {
  #    id: athlete_id,
  #    email: email address,
  #    options: {}
  #  }
  def send_email(campaign_name, recipients)
    raise TooManyMembersError if recipients.size > MAX_MEMBERS

    trigger_campaign_message = TriggerCampaignMessage.new
    interact_object = InteractObject.new
    interact_object.folderName = 'ignored'
    interact_object.objectName = campaign_name
    trigger_campaign_message.campaign = interact_object
    trigger_campaign_message.recipientData = []

    recipients.each do |recipient_info|
      options = recipient_info.has_key?('options') ? recipient_info['options'] : {foo: 'bar'}

      recipient = Recipient.new
      recipient.emailAddress = recipient_info['email'] if recipient_info['email']
      recipient.customerId = recipient_info['id'] if recipient_info['id']
      recipient_data = RecipientData.new
      recipient_data.recipient = recipient
      recipient_data.optionalData = []
      options.each_pair do |k, v|
        optional_data = OptionalData.new
        optional_data.name = k
        v.gsub!(/[[:cntrl:]]/, ' ') if v.is_a? String
        optional_data.value = v
        recipient_data.optionalData << optional_data
      end

      trigger_campaign_message.recipientData << recipient_data
    end

    with_session do
      @client.triggerCampaignMessage(trigger_campaign_message)
    end
  end

  def with_timeout
    Timeout::timeout(timeout_threshold, ResponsysTimeoutError) do
      yield
    end
  end

  def with_session
    begin
      with_timeout do
        login if @session_id.nil?
      end
      with_application_error do
        with_timeout do
          yield
        end
      end
    ensure
      with_timeout do
        logout unless @keep_alive
      end
    end
  end

  protected

  def with_application_error
    begin
      yield
    rescue SOAP::FaultError => e
      inner_e = e.detail[e.faultstring.data]
      raise inner_e if inner_e
      raise e
    end
  end
end