class ProductsController < ApplicationController

  get '/products' do
    @products = Product.all
    erb :'/products/products'
  end

  get '/products/new' do
    if logged_in?
       erb :'/products/new'
     else
       redirect '/login'
     end
   end

   post '/products/new' do
     if logged_in? && !params[:name].empty? && !params[:brand].empty?
      @new_product = Product.create(:name => params[:name], :brand => params[:brand])
      scrape_product_image(@new_product)
      @new_product.user_id = current_user.id
      redirect '/users/:slug'
    else
      redirect '/users/:slug'
    end
  end

  get '/products/:id' do
    @product = Product.find(params[:id])
    erb :'/products/individual_product'
  end

  get '/shoes/:id/edit' do
    @product = Product.find(params[:id])
    erb :'/products/edit'
  end

  patch '/products/:id' do
    @product = Product.find(params[:id])
    if !params[:brand].empty? && !params[:name].empty? &&
      @product.update(:brand => params[:brand], :name => params[:name])
    end
      scrape_product_image(@new_product)
      @product.user_id = current_user.id
      @product.save
      redirect to "/products/#{@product.id}"
  end

  get '/products/:id/delete' do
    @product = Product.find(params[:id])
    @product.delete
    redirect to "/shoes"
  end



  helpers do
    def scrape_product_image(product)
      new_product_slug = "#{product.brand} #{product.name}".downcase.gsub(" ", "+")
      dynamic_url = "https://www.google.com/search?hl=en&biw=1225&bih=631&tbm=isch&sa=1&ei=wbH0WvipNoyijwSTn7TQDA&q=" + new_product_slug + "&oq=" + new_product_slug + "&gs_l=img.3..35i39k1.689740.695268.0.695557.31.31.0.0.0.0.161.2845.23j7.30.0....0...1c.1.64.img..1.30.2836...0j0i67k1j0i24k1.0.SIYmSW0WPws"
      ProductScraper.scrape_product(dynamic_url)
      @new_image_url = ProductScraper.url
      product.image_url = @new_image_url
      product.user_id = current_user.id
      product.save
    end
  end





end
