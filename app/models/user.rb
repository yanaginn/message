class User < ApplicationRecord
  validate :email, email_address: true
end
