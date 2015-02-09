get "/signup" do
  @user = User.new
  erb :"auth/signup"
end

post "/signup" do
  @user = User.create(params[:user])
  session[:user_id] = @user.id
  redirect "/"
end

get "/login" do 
  @user = User.new
  erb :"/auth/login"
end

post "/login" do 
  @user = User.authenticate(params[:user][:email], params[:user][:password])

  if @user
    session[:user_id] = @user.id
    redirect "/"
  else
    redirect "/login"
  end
end

get "/logout" do
  session.delete :user_id
  redirect "/"
end

