before "/users/*" do
  redirect '/' unless current_user
end

get "/users/:id" do
  if current_user 
    @user = User.find(params[:id])
    @urls = @user.urls
    erb :"users/show"
  end
end
