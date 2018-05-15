class ReviewsController < ApplicationController


  get '/reviews' do
    if logged_in?
      @user = current_user
    end
    @reviews = Review.all
    erb :'/reviews/reviews'
  end


  get '/reviews/new' do
    if logged_in?
      @user = current_user
      erb :'/reviews/new'
    else
      redirect '/reviews'
    end
  end

  post '/reviews/new' do
    

  end


end
