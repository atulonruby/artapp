class Category < ActiveRecord::Base
	has_many :products, dependent: :destroy
	has_many :user_categories
  has_many :users, through: :user_categories
  accepts_nested_attributes_for :products
end
