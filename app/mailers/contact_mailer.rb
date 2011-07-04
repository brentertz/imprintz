class ContactMailer < ActionMailer::Base
  default from: CONFIG['contact_email']

  def contact_email(contact)
    @contact = contact
    mail(:from => contact.email,
         :to => CONFIG['contact_email'],
         :subject => "#{CONFIG['site_name']} contact!")
  end
end
