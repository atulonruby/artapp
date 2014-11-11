class HomesController < ApplicationController
	def index
		@presenter = Users::IndexPresenter.new(current_user)
	end
end
