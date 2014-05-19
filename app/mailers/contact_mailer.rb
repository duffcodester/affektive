class ContactMailer < ActionMailer::Base
  default from: 'default@affektive.com'

  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(to: 'mipierce@mines.edu', from: @email,
         subject: 'GENERAL INQUIRY')
  end
end
