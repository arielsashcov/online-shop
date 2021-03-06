module Types
  class WarehouseType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :description, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :products, [Types::ProductType], null: true
    field :product_count, Integer, null: true

    def product_count
      object.products.size
    end
  end
end
