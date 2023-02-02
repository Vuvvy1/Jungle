# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example. Items marketed for sale on this application are residential, indoor plants.

## Overview

### Home Page/Categories
https://user-images.githubusercontent.com/68353387/172731463-0d2edf40-575f-4de3-9294-888b1dd8c18a.mp4

### Product Details
https://user-images.githubusercontent.com/68353387/172731511-ffb753f4-f03f-4753-9c53-3c97f5ea04ad.mp4

### Registration/Login
https://user-images.githubusercontent.com/68353387/172731531-21be11cd-9d22-4674-b7b5-7971d9b84c7a.mp4

### Add Items to Cart and Order
https://user-images.githubusercontent.com/68353387/172731549-ca161655-5121-4fb6-af7b-45343b4b4ea0.mp4

### Admin Privileges
https://user-images.githubusercontent.com/68353387/172731571-5c3a831a-8450-4db0-bfa9-3411d6fa34c7.mp4

## Dependencies

- [Ruby 3.1.1](https://www.ruby-lang.org/en/documentation/installation/)
- [Rails 6.1](https://guides.rubyonrails.org/v6.1/getting_started.html)
- [Money Rails](https://github.com/RubyMoney/money-rails)
- [Bootstrap 5](https://getbootstrap.com/docs/5.0/getting-started/introduction/)
- [Font Awesome Rails](https://github.com/bokmann/font-awesome-rails)
- [PostgreSQL 9.x](https://www.postgresql.org/docs/9.0/)
- [Stripe](https://stripe.com/en-gb-ca)

## Getting Started

In order to run this application, you will need to have Ruby and Rails installed. If you do not know how to set it up or if you would like to learn more about it, visit this [website](https://guides.rubyonrails.org/v6.1/getting_started.html).

### __Installation__

_Prior to installation make sure you go into the directory where you would like jungle-rails to reside._ 

1. Clone the repo
  ```sh
  git clone https://github.com/Vuvvy1/jungle-rails.git
  ``` 
1. Install dependencies
  ```sh
  bundle install
  ``` 
2. Setup database configuration
  ```sh
  cp config/database.example.yml config/database.yml
  ``` 
3. Setup secrets to sign and authenticate cookies
  ```sh
  cp config/secrets.example.yml config/secrets.yml
  ``` 
4. Create, load and seed database
  ```sh
  bin/rails db:reset
  ``` 
5. Setup environment variables
  ```sh
  cp .env.example .env
  ``` 
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Start the server
  ```sh
  bin/rails s -b 0.0.0.0
  ``` 

### __Database__
>
>If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the >development and test sections, and replace if necessary the user and password `development` to an existing database user.

### __Stripe Testing__
>
>Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.
>
>More information in their docs: <https://stripe.com/docs/testing#cards>

## Usage

Once the server is running, you will be able to view, add plants to card and order as a user. The following features are available upon application launch:

Users:
- Plants for sale are listed on the main page.
- Plants can also be viewed based on assigned category.
- Users can click on a plant to view more detailed information and includes reviews from users based on selected product.
- Users can log in and log out.
- Users can add items to cart by clicking on the Add button - My Cart total values are updated.
- Users can view their cart by clicking on the My Cart.
- Once done adding plants, users can pay for order by clicking on Pay With Card. 
- Users will be redirected to order summary page after payment and if logged in, will be sent a detailed email receipt of the order.
- Users can register and login with provided credentials.

Admin:
- Admins are required to sign-in with admin credentials to access admin pages.
- Admins are provided with jungle statistics on dashboard page.
- Admins can add/delete products.
- Admins can add new categories.

Keep in mind that this application just simulates e-commerce for plants based on arbitrary data. Jungle-rails itself is not tied to a real e-commerce platform.


