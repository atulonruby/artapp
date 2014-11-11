class Blog < ActiveRecord::Base
	has_many :user_blogs
  has_many :users, through: :user_blogs 
end
