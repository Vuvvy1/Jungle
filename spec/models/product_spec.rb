# require 'rails_helper'

# RSpec.describe Product, type: :model do
#   describe 'Validations' do

#     context 'creation of new product with a category' do
#       before(:each) do
#         @category = Category.new(name: 'Succulent')
#         @category.save!

#         @product = @category.products.new(
#           name: 'Echeveria',
#           price: '35.99',
#           quantity: 4
#         )
#       end
  
#       it 'is valid when name, price, and quantity are present' do
#         @product.save!
  
#         expect(@product).not_to be_nil
#       end
  
#       it 'is not valid when name is not present' do
#         @product[:name] = nil
#         @product.save
  
#         expect(@product.errors.full_messages).not_to be_empty
#       end
  
#       it 'is not valid when price is not present' do
#         @product[:price_cents] = nil
#         @product.save
  
#         expect(@product.errors.full_messages).not_to be_empty
#       end
  
#       it 'is not valid when quantity is not present' do
#         @product[:quantity] = nil
#         @product.save
  
#         expect(@product.errors.full_messages).not_to be_empty
#       end

#       after(:each) do
#         @product.destroy unless @product.nil?
#         @category.destroy unless @category.nil?
#       end
#     end

#     context 'creation of new product without a category' do
#       it 'is not valid' do
#         @new_product = Product.new(
#           name: 'Echeveria',
#           price: '35.99',
#           quantity: 4
#         )
#         @new_product.save

#         expect(@new_product.errors.full_messages).not_to be_empty
#       end
#     end
#   end
# end