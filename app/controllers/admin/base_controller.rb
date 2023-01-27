class Admin::BaseController < ApplicationController
  http_basic_authenticate_with name: ENV["HTTP_ADMIN_USER_NAME"].to_s,
                               password: ENV["HTTP_BASIC_PASSWORD"].to_s,
                               if: -> { ENV["HTTP_BASIC_PASSWORD"].present? }
end