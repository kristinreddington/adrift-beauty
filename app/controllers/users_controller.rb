class UsersController < ApplicationController

  get '/signup' do
    if logged_in?
      redirect "/products"
    else
      erb :"/users/signup"
    end
  end

  get '/users/index' do
    if logged_in?
      @products = Product.all
      erb :'/users/index'
    else
      redirect '/login'
    end
  end

  post '/signup' do
    if !params[:username].empty? && !params[:email].empty? && !params[:password].empty?
      @user = User.create(params)
      session[:user_id] = @user.id
      redirect '/users/index'
    else
      redirect "/signup"
    end
  end

  get '/login' do
    if logged_in?
      redirect "/users/index"
    else
      erb :"users/login"
    end
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/products"
    else
      redirect "/signup"
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

  get '/users/:slug' do
    @user = User.find_by_slug(params[:slug])
    erb :"/users/#{@user.slug}"
  end

end
