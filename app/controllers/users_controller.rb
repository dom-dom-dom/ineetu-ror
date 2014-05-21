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
		@user = User.find(params[:id])
	end

	#update
	def update
		@user = User.find(params[:id])

		if @user.update(params[:user].permit(:username, :password, :email))
		   redirect_to @user
		else
		   render 'edit'
  		end
	end

	#destroy
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

end
