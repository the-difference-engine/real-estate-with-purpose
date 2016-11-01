# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# 10/10/16 Specifiy ActionMailer settings to point to SendGrid’s servers
ActionMailer::Base.smtp_settings = {
  :user_name => 'realestatewithpurpose',
  :password => 'getyourfreakon1',
  :domain => 'localhost:3001',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}