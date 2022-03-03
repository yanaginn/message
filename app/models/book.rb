class Book < ApplicationRecord
  before_save MessageOut
  before_validation MessageOut

   has_many :rentals
   has_many :users, through: :rentals

  validates :title, presence: true
  validates :description, absence: true , unless: :title?
  validates :description, length: { maximum: 100 }
end
