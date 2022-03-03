class User < ApplicationRecord

    has_many :rentals
    has_many :users, through: :rentals

  validate :email, email_address: true
end
