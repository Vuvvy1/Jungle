require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    before(:each) do
      @new_user = User.new(
        first_name: 'hehehe',
        last_name: 'hahaha',
        email: 'test@gmail.com',
        password: 'test',
        password_confirmation: 'test'
      )
    end
        it 'must be valid when first_name, last_name, email and passwords are populated' do
          @new_user.save
          expect(@new_user.errors.full_messages).to be_empty
        end
        
        context 'Email' do
        it 'email can not match another' do
          @new_user.save

          @same_email_user = User.create(
          first_name: 'haha',
          last_name: 'hehe',
          email: 'TEST@gmail.com',
          password: 'test',
          password_confirmation: 'test'
        )
          
          expect(@same_email_user.errors.full_messages).not_to be_empty
        end
        
        it 'make another email' do
          @new_user.save

          @another_email_user = User.create(
          first_name: 'haha',
          last_name: 'hehe',
          email: 'TEeST@gmail.com',
          password: 'test',
          password_confirmation: 'test'
        )
          
          expect(@another_email_user.errors.full_messages).to be_empty


        end


        after(:each) do
          @new_user.destroy unless @new_user.nil?
          @same_email_user.destroy unless @same_email_user.nil?
          @another_email_user.destroy unless @another_email_user.nil?
        end
    end
  end
  describe '.authenticate_with_credentials' do
    before do
      @user = User.create(
        first_name: 'Mowgli',
        last_name: 'Man-cub',
        email: 'test@test.com',
        password: 'test',
        password_confirmation: 'test'
      )
    end
          it 'should fail if stored password does not equal password provided at login' do
          
          @user = User.authenticate_with_credentials('test@test.com', 'testt')

            expect(@user).to be_falsey
        end

        it 'should be valid if stored password matches password provided at login' do
            
            @user = User.authenticate_with_credentials('test@test.com', 'test')

              expect(@user).to be_truthy
        end
        it 'should be valid if spaces before email and caps are used' do
            
            @user = User.authenticate_with_credentials('   Test@test.com', 'test')

              expect(@user).to be_truthy
        end
      end
end
