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
    @list = @user.lists.create(params[:list].permit(:title, :description))
  end

   
  #new
  def new
    @user = User.find(params[:user_id])
  end

  #edit
  def edit
    @list = List.find(params[:id])
  end

  #update
  def update
    @list = List.find(params[:id])

    if @list.update(params[:list].permit(:title, :description))
       redirect_to @list
    else
       render 'edit'
      end
  end
    
  #destroy
  def destroy
    end

end