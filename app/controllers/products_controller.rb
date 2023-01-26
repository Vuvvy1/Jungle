class ProductsController < ApplicationController

   http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @products = Product.all.order(created_at: :desc)
  end
  
end
