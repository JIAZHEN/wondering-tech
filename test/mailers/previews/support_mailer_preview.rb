class SupportMailerPreview < ActionMailer::Preview
  def contact_message
    SupportMailer.contact_message(email: "test@example.com", message: "Message", subject: "Subject", name: "Someone")
  end
end
