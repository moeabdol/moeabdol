class ContactMailer < ApplicationMailer
  default from: "app@moeabdol.com"

  def send_contact_mail(data)
    @name = data[:name]
    @email = data[:email]
    @message = data[:message]
    mail(to: "mohd.a.saed@gmail.com", subject: "#{@name} has sent you an email")
  end
end
