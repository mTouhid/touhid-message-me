class Message < ApplicationRecord
  validates :body, presence: true, length: {minimum:1, maximum:128}
  belongs_to :user
end
