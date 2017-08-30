class Contact < ApplicationRecord
  validates :name, presence: true
  validates :email, uniqueness: {scope: :name}
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
