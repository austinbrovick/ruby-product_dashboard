class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    puts "$$" * 50
    puts params[:id]
    puts "$$" * 50
    @product = Product.find(params[:id])
  end

  def new
    @categories = Category.all
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def create
    puts "$$" * 50
    category = Category.find(params[:product][:category])
    puts category
    puts "$$" * 50
    Product.create(name: params[:product][:name], description: params[:product][:description], price: params[:product][:price], category: category)
    redirect_to '/products'
  end

  def update
    category = Category.find(params[:product][:category])
    puts "$$" * 40
    puts params[:id]
    puts "$$" * 40
    p = Product.find(params[:id])
    p.name = params[:product][:name]
    p.description = params[:product][:description]
    p.price = params[:product][:price]
    p.category = category
    p.save
    redirect_to '/products'
  end

  def destroy
    puts "$$" * 50
    product = Product.find(params[:id])
    product.destroy
    redirect_to '/products'
  end

end
