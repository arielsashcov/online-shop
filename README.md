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
    * `sudo service mysql restart`
    * `rake db:create`
    * `rake db:reset db:seed`

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Commands
    * Updates
        * `gem update --system`
    * Installing GraphQL
        * `rails g graphql:install`
        * `bundle install`
    * Adding new models & GraphQL objects/mutations
        * ProductCategory
            * `rails g model ProductCategory name:string description:string`
            * `rails g graphql:object product_category`
            * `rails g graphql:mutation CreateProductCategoryMutation`
            * `rails db:migrate`
        * Product
            * `rails g model Product product_category:belongs_to name:string description:string`
            * `rails g graphql:object product`
            * `rails g graphql:mutation CreateProductMutation`
            * `rails db:migrate`
        * User
            * `rails g model User name email password_digest`
            * `rails g graphql:object UserType id:ID! name:String! email:String!`
            * `rails g graphql:mutation CreateUser`
            * `rails db:migrate`

* Mutations & Output
    * CreateProductCategory
    * CreateProduct
    * CreateUser
    ```json
    mutation {
        createUser(input: {
            name: "Ariel Test",
            authProvider: {
                credentials: {
                    email: "ariel.sashcov@gmail.com",
                    password: "123456"
                }
            }
        }) {
            id
            name
            email
        }
    }
    ```
    ```json
    {
        "data": {
            "createUser": {
            "id": "1",
            "name": "Ariel Test",
            "email": "ariel.sashcov@gmail.com"
            }
        }
    }
    ```
