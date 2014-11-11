class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_blogs
  has_many :blogs, through: :user_blogs

  has_many :user_categories
  has_many :categories, through: :user_categories

  has_many :group_users
  has_many :groups, through: :group_users
end
