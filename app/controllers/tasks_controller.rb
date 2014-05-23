class TasksController < ApplicationController

   #index
  def index
    @list = List.find(params[:list_id])
    end

  #show
  def show
     @task = Task.find(params[:id])
    end

  #create
  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.create(params[:task].permit(:title, :description, :priority))
  end

   
  #new
  def new
    @list = List.find(params[:list_id])
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
