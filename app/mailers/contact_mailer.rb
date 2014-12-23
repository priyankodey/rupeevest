class ContactMailer < ActionMailer::Base
  # default from: "info@rupeevest.com"
   default :from => "priyanko.dey33@gmail.com"

  def contact_confirmation(contact)
    @contact = contact
    #mail(:to => "#{contact.name} <#{contact.email}>", :subject => "Rupeevest Query")
    mail(:to => contact.email, :subject => "Rupeevest")
  end
end
