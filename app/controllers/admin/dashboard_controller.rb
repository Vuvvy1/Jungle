class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["HTTP_ADMIN_USER_NAME"].to_s,
                               password: ENV["HTTP_BASIC_PASSWORD"].to_s,
                               if: -> { ENV["HTTP_BASIC_PASSWORD"].present? }
  def show
    @products_count = Product.all.length
    @categories_count = Category.all.length
    @orders_count = Order.all.length
    # @line_items_count = LineItem.all.length
  end
end
