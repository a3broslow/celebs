class CelebsController < ApplicationController
	def index
	end

	def new
		@celeb =Celeb.new
	end

	def create
		@celeb =Celeb.new(celeb_params)

		if @celeb.save
			redirect_to @celeb, notice: "Successfully created"
	end

	private

	def celeb_params
		params.require(:celeb).permit(:title, :description)
	
	end
end
