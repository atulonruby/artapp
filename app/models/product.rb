class Product < ActiveRecord::Base
	belongs_to :category, counter_cache: true
	validates :name, presence: true
end
