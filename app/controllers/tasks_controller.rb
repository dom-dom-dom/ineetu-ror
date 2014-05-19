class TasksController < ApplicationController
# action    verb      url
# index     get       /tasks
# create    post      /tasks
# new       get       /tasks/new
# edit      get       /tasks/:id/edit
# show      get       /tasks/:id
# update    put       /tasks/:id
# destroy   delete    /tasks/:id

# index
get '/cats' do
  @cats = Cat.all
  erb :"cats/index"
end

# show
get '/cats/:id' do
  @cat = Cat.find(params[:id])
  erb :"cats/show"
end

# new
get '/cats/new' do
  erb :"cats/new"
end

# create
post '/cats' do
  @cat = Cat.new(params[:cat])
  if @cat.save
    redirect "/cats/#{@cat.id}"
  else
    erb :"cats/new"
  end
end

# edit
get '/cats/:id/edit' do
  @cat = Cat.find(params[:id])
  erb :"cats/edit"
end

# update
put '/cats/:id' do
  @cat = Cat.find(params[:id])

  if @cat.update(params[:cat])
    redirect "/cats/#{@cat.id}"
  else
    erb :"cats/edit"
  end
end

# destroy
delete '/cats/:id' do
  @cat = Cat.find(params[:id])
  @cat.destroy

  redirect "/cats"
end



end
