class ListsController < ApplicationController

  #index
  def index
    end

  #show
  def show
    end

  #create
  def create
    @user = User.find(params[:user_id])
    @list = @user.lists.create(params[:list].permit(:title, :description))
  end

   
  #new
  def new
    @user = User.find(params[:user_id])
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