class ReviewsController < ApplicationController


  get '/reviews' do
      @reviews = Review.all
      erb :'/reviews/reviews'
    end


  get '/reviews/new' do
    if logged_in?
      @user = current_user
      erb :'/reviews/new'
    else
      redirect '/reviews/reviews'
    end
  end

  post '/reviews/new' do
    if logged_in? && !params[:name].empty? && !params[:content].empty?
     @user = current_user
     @new_review = Review.create(:name => params[:name], :content => params[:content])
     @new_review.save
     #@product = Product.find()
     #@new_review.product_id =
     @new_review.user_id = current_user.id
     redirect "/users/#{@user.slug}"
   else
     redirect '/reviews'
   end
 end


end
