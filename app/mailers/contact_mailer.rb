class ContactMailer < ActionMailer::Base
  default from: CONFIG['site_email']

  def contact_email(contact)
    @contact = contact
    mail(:from => contact.email,
         :to => CONFIG['site_email'],
         :subject => "#{CONFIG['site_name']} contact!")
  end
end
