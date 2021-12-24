# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Versions
    * Ruby version 3.0.3p157
    * Rails version 7.0.0

* System dependencies
    * mysql2
    * graphql
    * graphiql-rails

* Configuration

* Database creation
    * `rake db:create`

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Commands
    * `gem update --system`
    * `sudo service mysql restart`
    * `rake db:create`
    * `rails g model Product product_category:belongs_to name:string description:string`
    * `rails g model ProductCategory name:string description:string`
    * `rails db:migrate`
    * `rails g graphql:install`
    * `bundle install`
    * `rake db:reset db:seed`
    * `rails g graphql:object product_category`
    * `rails g graphql:object product`
    * `rails g graphql:mutation CreateProductCategoryMutation`
    * `rails g graphql:mutation CreateProductMutation`
