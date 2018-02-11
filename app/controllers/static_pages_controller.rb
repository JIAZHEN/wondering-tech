class StaticPagesController < ApplicationController
  def home
  end

  def contact_message
    if contact_params.to_h.all? { |_, value| value.present? }
      SupportMailer.contact_message(contact_params).deliver
      flash[:success] = "Thank you for the message! We will be in touch shortly."
    else
      flash[:error] = "All message fields cannot be empty."
    end

    redirect_to "#{t(:domain)}/#contact"
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message, :subject)
  end
end
