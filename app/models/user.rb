class User < ApplicationRecord
  before_save {email.downcase!}
  has_secure_password
  AAA = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email,  presence:true, length: {maximum: 255},
              uniqueness:true, format: {with: AAA}
  validates :password, presence:true, length: {minimum: 6}
  validates :name, presence:true, length: {maximum: 50}

end
