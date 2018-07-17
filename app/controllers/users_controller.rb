class UsersController < ApplicationController

  get '/signup' do
    if logged_in?
      redirect "/users/#{current_user.id}"
    else
      erb :"/users/signup"
    end
  end

  post '/signup' do
    if !params[:username].empty? && !params[:password].empty? &&
      @user = User.new(:name => params[:name], :username => params[:username], :password => params[:password])
      if @user.save
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}"
    else
      redirect "/signup"
    end
  end
end

  get '/login' do
    #session.clear
    if logged_in?
      redirect "/users/#{current_user.id}"
    else
      erb :"users/login"
    end
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}"
    else
      redirect "/login"
    end
  end

  get '/logout' do
    if logged_in?
      session.clear
      redirect "/"
    else
      redirect "/"
    end
  end

  get '/users/:id' do
    if logged_in?
    @products = Product.all
    @user = current_user
    erb :"/users/show"
    else
    redirect '/login'
    end
  end

  get '/users/:id/profile' do
    if logged_in?
    @user = User.find_by(:id => params[:id])
    @products = @user.products
    erb :"/users/profile"
  else
    redirect '/login'
  end
end




end
