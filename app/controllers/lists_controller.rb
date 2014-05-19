class ListsController < ApplilistionController

	# action    verb      url
# index     get       /tasks
# create    post      /tasks
# new       get       /tasks/new
# edit      get       /tasks/:id/edit
# show      get       /tasks/:id
# update    put       /tasks/:id
# destroy   delete    /tasks/:id

# index
get '/lists' do
  @lists = List.all
  erb :"lists/index"
end

# show
get '/lists/:id' do
  @list = List.find(params[:id])
  erb :"lists/show"
end

# new
get '/lists/new' do
  erb :"lists/new"
end

# create
post '/lists' do
  @list = List.new(params[:list])
  if @list.save
    redirect "/lists/#{@list.id}"
  else
    erb :"lists/new"
  end
end

# edit
get '/lists/:id/edit' do
  @list = List.find(params[:id])
  erb :"lists/edit"
end

# update
put '/lists/:id' do
  @list = List.find(params[:id])

  if @list.update(params[:list])
    redirect "/lists/#{@list.id}"
  else
    erb :"lists/edit"
  end
end

# destroy
delete '/lists/:id' do
  @list = List.find(params[:id])
  @list.destroy

  redirect "/lists"
end

end
