class UsersController < ApplicationController

  get '/signup' do
    session.clear
    if logged_in?
      redirect "/products"
    else
      erb :"/users/signup"
    end
  end

  post '/signup' do
    if !params[:username].empty? && !params[:password].empty? &&
      @user = User.new(:name => params[:name], :username => params[:username], :password => params[:password])
      @user.save
      session[:user_id] = @user.id
      #binding.pry
      redirect "/users/#{@user.slug}"
    else
      redirect "/signup"
    end
  end

  get '/login' do
    if logged_in?
      redirect "/users/#{@user.slug}"
    else
      erb :"users/login"
    end
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/users/#{@user.slug}"
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
    if logged_in?
    @products = Product.all
    @user = current_user
    erb :"/users/show"
    else
    redirect '/login'
    end
  end

end
