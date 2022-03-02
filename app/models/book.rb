class Book < ApplicationRecord
  before_save MessageOut
  before_validation MessageOut

  validates :title, presence: true
  validates :description, absence: true , unless: :title?
  validates :description, length: { maximum: 100 }
end
