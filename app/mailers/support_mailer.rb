class SupportMailer < ApplicationMailer
  def contact_message(info)
    @info = info
    mail(to: t(:contact_email), subject: "#{info[:name].titleize} has sent you a message.")
  end
end