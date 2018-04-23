class Micropost < ApplicationRecord
  belongs_to :user
  has_many :users, through: :micropost_users, source: :user
  has_many :micropost_users
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
end
