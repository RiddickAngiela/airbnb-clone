# app/mailers/contact_mailer.rb

class ContactMailer < ApplicationMailer
  default to: 'angielariddick@gmail.com' # Replace with your business email

  def send_message(message)
    @message = message
    mail(from: @message.email, subject: @message.subject)
  end
end
