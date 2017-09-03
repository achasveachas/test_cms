class Contact < ApplicationRecord
  has_many :telephones, :dependent => :destroy
  accepts_nested_attributes_for :telephones, reject_if: proc { |attr| attr['number'].empty? }
  
  validates :name, presence: true
  validates :email, uniqueness: {scope: :name}
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  def gravatar_hash
    Digest::MD5.hexdigest(self.email.strip.downcase)
  end

  def default_phone
    self.telephones.where(default: true).first
  end

  def other_phones
    self.telephones.reject {|phone| phone == self.default_phone}
  end
end
