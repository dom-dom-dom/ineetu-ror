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
    @list = @user.lists.create(list_params)
    redirect_to user_path(@user)
  

  private
    def list_params
      params.require(:title).permit(:description)
    end
  end

   

  #new
  def new
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