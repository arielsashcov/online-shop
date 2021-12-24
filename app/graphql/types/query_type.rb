module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Product
    field :products, [Types::ProductType], null: false

    def products
      Product.all
    end

    field :product, Types::ProductType, null: false do
      argument :id, ID, required: true
    end

    def product(id:)
      Product.find(id)
    end

    # ProductCategory
    field :product_categories, [Types::ProductCategoryType], null: false

    def product_categories
      ProductCategory.all
    end

    field :product_category, Types::ProductCategoryType, null: false do
      argument :id, ID, required: true
    end

    def product_category(id:)
      ProductCategory.find(id)
    end


  end
end
