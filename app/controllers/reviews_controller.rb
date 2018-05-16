class ReviewsController < ApplicationController


  get '/reviews/reviews' do
      @reviews = Review.all
      erb :'/reviews/reviews'
    end


  get '/reviews/new' do
    if logged_in?
      @user = current_user
      erb :'/reviews/new'
    else
      redirect '/login'
    end
  end

  post '/reviews/new' do
    if logged_in? && !params[:name].empty? && !params[:content].empty?
     @user = current_user
     @new_review = Review.create(:name => params[:name], :content => params[:content])
     @new_review.user_id = current_user.id
     @new_review.user = @user
     @new_review.save
     redirect "/reviews/users/#{@user.slug}"
   else
     redirect '/reviews/new'
   end
 end

 get '/reviews/:id/edit' do
    if logged_in?
      @review = Review.find_by_id(params[:id])
      if session[:user_id] == @review.user_id
        @user = User.find(@review.user_id)
        erb :'/reviews/edit'
      else
        flash[:failure] = "You cannot edit another user's report"
        redirect to "/reviews/users/#{current_user.slug}"
      end
    else
      redirect to '/login'
    end
  end

  patch '/reviews/:id' do
    if params[:title].nil? || params[:title].length < 3 || params[:business].nil? || params[:business].length < 3 || params[:location].nil? || params[:location].length < 3 || params[:content].nil? || params[:content].length < 3 || params[:date].nil? || params[:date].length < 3 || params[:borough].nil?
      flash[:failure] = "Please do not leave any forms blank"
      redirect to "/reports/#{params[:slug]}/edit"
    elsif (/(19|20)\d\d[- \/.](0[1-9]|1[012])[- \/.](0[1-9]|[12][0-9]|3[01])/ =~ params[:date]) != 0
      flash[:failure] = "Date must follow proper format: YYYY-MM-DD"
      redirect to "/reports/#{params[:slug]}/edit"
    else
      @report = Report.find_by_slug(params[:slug])
      @report.title = params[:title]
      @report.business = params[:business]
      @report.location = params[:location]
      @report.content = params[:content]
      @report.date = params[:date]
      @report.borough = Borough.find_by(name: params[:borough])
      @report.save
      redirect to "/reports/#{@report.slug}"
    end
  end

  delete '/reviews/:id/delete' do
    @user = User.find(session[:user_id])
    @report = Report.find_by_slug(params[:slug])
    if @report != nil && logged_in? && @report.user_id == session[:user_id]
      @report.destroy
      redirect to "/#{@user.slug}"
    else
      redirect to "/#{@user.slug}"
    end
  end

 get '/reviews/users/:slug' do
   if logged_in? && !current_user.reviews.empty?
     @user = current_user
     @reviews = Review.all 
     erb :'/reviews/users_review'
   else
     redirect "/users/#{@user.slug}"
   end
end


end
