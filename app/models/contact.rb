class Contact
  include ActiveModel::Validations

  validates_presence_of :name, :email

  # to deal with form, you must have an id attribute
  attr_accessor :id, :name, :email, :phone, :subject, :message

  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
    @attributes = attributes
  end

  def read_attribute_for_validation(key)
    @attributes[key]
  end

  def to_key
  end

  def persisted?
    false
  end

  def save
    if self.valid?
      ContactMailer.contact_email(self).deliver
      return true
    end
    false
  end
end
