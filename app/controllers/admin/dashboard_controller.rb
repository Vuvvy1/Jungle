class Admin::DashboardController < ApplicationController
  # http_basic_authenticate_with name: "a", password:"a"
  # name: ENV["HTTP_ADMIN_USER_NAME"],
  # password: ENV["HTTP_BASIC_PASSWORD"]
  def show
    @products_count = Product.all.length
    @categories_count = Category.all.length
    @orders_count = Order.all.length
    @line_items_count = LineItem.all.length
  end
end
