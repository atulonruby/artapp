class Users::IndexPresenter
	def initialize(user)
		@user = user
	end

	def email
		@email ||= @user.email
	end

	def category
		@user.categories.first
	end
	
	def products
		category.products
	end
		
	def blog
		@user.blogs.first
	end
	
	def group
		@user.groups.first
	end

	def welcome
		if @user.email == "atuljha86@gmail.com"
			"Hi atul"
		else
			"Hi there!"
		end 
	end

	
end