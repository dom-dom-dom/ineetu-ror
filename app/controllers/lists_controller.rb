class ListsController < ApplicationController

  #index
  def index
     @user = User.find(params[:user_id])
    end

  #show
  def show
     @list = List.find(params[:id])
    end

  #create
  def create
    @user = User.find(params[:user_id])
    # @lists = List.find(params[:user_id])
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