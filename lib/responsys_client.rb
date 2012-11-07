require 'metal/defaultDriver.rb'
require 'metal/defaultMappingRegistry.rb'

class ResponsysClient

  # Creates a client object to connect to Responsys via SOAP API
  #
  # <username> - The login username
  # <password> - The login password
  def initialize(username, password)
    @username = username
    @password = password
    @client = ResponsysWS.new
  end

end