class Brand < ApplicationRecord
  has_many :wrestlers
  validates :name, presence: true
end
