class ContactFormMailer < ActionMailer::Base
  default to: ["manderson@lighthouse-commercial.com", "Vernon_Morrison@Lighthouse-Commercial.com"],
          from: "lighthouse.notifications@gmail.com"
  
  def new_contact_us_message(email = nil, content = nil)
    @email = email
    @content = content
    mail(subject: "You've received a Message from the Lighthouse Commercial Website") 
  end
end
