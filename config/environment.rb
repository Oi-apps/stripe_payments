# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application. Was moved by me from "after ActionMailer::Base.smtp_settings  {} position"
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
	:address => 			'smtp.sendgrid.net',
	:port => 				'587',
	:authentication => 		:plain,
	:user_name => 			ENV['SENDGRID_USERNAME'],
	:password =>			ENV['SENDGRID_PASSWORD'],
	:domain => 				'heroku.com',
	:enable_startstls_auto => true
}



=begin
http://www.ask-coder.com/4190205/method_missing-undefined-method-add_delivery_method-for-actionmailerbaseclass
config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    :address => "email-smtp.us-east-1.amazonaws.com",
    :user_name => "..." # Your SMTP user here.
    :password => "...", # Your SMTP password here.
    :authentication => :login,
    :enable_starttls_auto => true
    =end

 =begin
http://blog.mailgun.com/tips-tricks-avoiding-gmail-spam-filtering-when-using-ruby-on-rails-action-mailer/
:port => 	587,
=end
