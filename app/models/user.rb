class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :restaurants
  has_many :reviews, dependent: :destroy
end
