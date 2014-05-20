class UsersController < ApplicationController

	#index
	def index
		@users = User.all
	  end

	#show
	def show
		@user = User.find(params[:id])
	  end
	  
	#create
	def create
		 @user = User.new(user_params)
 
		 @user.save
		 redirect_to @user
	end

	private
	  def user_params
	    params.require(:user).permit(:username,:password)
	  end

	#new
	def new
		@user = User.new
	
	end

	#edit
	def edit
		end

	#update
	def update
		end

	#destroy
	def destroy
		end

end
