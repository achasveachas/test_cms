class Contact < ApplicationRecord
  has_many :telephones, :dependent => :destroy
  accepts_nested_attributes_for :telephones, :reject_if => proc { |attributes| attributes['number'].blank? }
  validates :name, presence: true
  validates :email, uniqueness: {scope: :name}
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  def self.sort_by(search_param)
    if search_param == "phone"
      self.joins(:telephones).merge(Telephone.where(default: true)).order("telephones.number")
    else
      self.order(search_param)
    end
  end

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
