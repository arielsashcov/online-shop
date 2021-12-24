module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false
    field :product_category_id, Integer, null: false
    field :name, String, null: true
    field :description, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
