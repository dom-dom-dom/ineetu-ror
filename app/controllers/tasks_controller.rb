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

   
  #edit
  def edit
    @list = List.find(params[:list_id])
   @task = Task.find(params[:id])
  end

  #update
  def update
    @task = Task.find(params[:id])

    if @task.update(params[:task].permit(:title, :description, :priority))
       redirect_to list_task_path
    else
       render 'edit'
      end
  end
    
  #destroy
  def destroy
   @list = List.find(params[:list_id])
   @task = @list.tasks.find(params[:id])
   @task.destroy
   redirect_to list_path(@list)
  end

end
