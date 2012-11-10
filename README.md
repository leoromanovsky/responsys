Responsys
=========

# Sending an email

  client = Responsys.new('username', 'password')

  recipients = []
  recipient_one = {email: 'customer@github.com'}
  recipient_two = {id: '1154'}
  recipients << recipient_one
  recipients << recipient_two

  client.send_email('campaign_name', recipients)