class UsersController < ApplicationController

	#index
	def index
	  end

	#show
	def show
	  end
	  
	#create
	def create
		 @user = User.new(params[user_params])
 
		 @user.save
		 redirect_to @user
	end

	private
	  def user_params
	    params.require(:user).permit(:username, :password)
	  end

	#new
	def new
	 @users = User.new
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
