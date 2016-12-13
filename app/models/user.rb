class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :gifts
  validates :username, :email, presence:  true
  validates :password, length: {minimum: 6}
  has_secure_password


end
