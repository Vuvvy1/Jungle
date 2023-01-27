class Admin::DashboardController < Admin::BaseController
  def show
    @products_count = Product.all.length
    @categories_count = Category.all.length
    @orders_count = Order.all.length
    # @line_items_count = LineItems.all.length
  end
end
