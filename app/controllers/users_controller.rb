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
		
		@user = User.new(params[:user].permit(:username, :password, :email))

		if @user.save
		    redirect_to @user
		  else
		    render 'new'
		  end
		  
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
