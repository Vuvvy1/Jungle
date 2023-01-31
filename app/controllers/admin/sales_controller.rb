class Admin::SalesController < Admin::BaseController
   def index
    @sales = Sale.order(id: :desc).all
   end
end
