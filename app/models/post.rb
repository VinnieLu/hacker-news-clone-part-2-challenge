class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :body, presence: true

	has_many :comments
	has_many :post_votes
	has_many :users, through: :comments

end
