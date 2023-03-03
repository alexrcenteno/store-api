class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      quantity: params[:quantity],
    )
    render :show
  end
end
