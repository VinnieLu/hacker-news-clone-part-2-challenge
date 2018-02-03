class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true

  has_many :comments
  has_many :posts, through: :comments
  has_many :post_votes
  has_many :comment_votes
end
