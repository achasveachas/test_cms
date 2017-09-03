class Telephone < ApplicationRecord
  belongs_to :contact

  validates_format_of :number, :with => /\A(\d{3}-\d{3}-\d{4}|\d{3}-\d{4})\z/
end
