class User < ApplicationRecord
  validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {minimum:3, maximum:10}
  validates :password, presence: true
  has_secure_password
end
