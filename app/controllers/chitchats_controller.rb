class ChitchatsController < ApplicationController

	def index
		@chitchat = Chitchat.all
	end

	def new
		@chitchat = Chitchat.new
	end

	def create
		@chitchat = Chitchat.new(chitchat_params)
		@chitchat.user = current_user
		if @chitchat.save
  		redirect_to @chitchat
  	else
  		render "new"
  	end
	end

	def show
  	@chitchat = Chitchat.find(params[:id])
	end

	def edit
		@chitchat = Chitchat.find(params[:id])
	end

	def update
		@chitchat = Chitchat.find(params[:id])
		if @chitchat.save
			redirect_to @chitchat
		else
			render "new"
		end
	end

	def destroy
		@chitchat = Chitchat.find(params[:id])
		@chitchat.destroy
		redirect_to chitchats_path
	end
		
	private

	def chitchat_params
		params.permit(:content, :name)
	end


end
