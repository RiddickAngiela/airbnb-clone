# app/controllers/contact_controller.rb

class ContactController < ApplicationController
  def new
    @message = ContactMessage.new
  end

  def create
    @message = ContactMessage.new(contact_message_params)
    if @message.save
      ContactMailer.send_message(@message).deliver_now
      redirect_to contact_path, notice: 'Your message has been sent successfully.'
    else
      render :new
    end
  end

  private

  def contact_message_params
    params.require(:contact_message).permit(:name, :email, :subject, :content)
  end
end
