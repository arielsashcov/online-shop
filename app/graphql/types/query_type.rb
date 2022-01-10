module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Product
    field :products, [Types::ProductType], null: false do
      description 'Find all products'
    end

    def products
      Product.all
    end

    field :product, Types::ProductType, null: false do
      argument :id, ID, required: true
      description 'Find a product by ID'
    end

    def product(id:)
      Product.find(id)
    end

    # ProductCategory
    field :product_categories, [Types::ProductCategoryType], null: false do
      description 'Find all ProductCategories'
    end

    def product_categories
      ProductCategory.all
    end

    field :product_category, Types::ProductCategoryType, null: false do
      argument :id, ID, required: true
      description 'Find a ProductCategories by ID'
    end

    def product_category(id:)
      ProductCategory.find(id)
    end

    Warehouse
    field :warehouses, [Types::WarehouseType], null: false do
      description 'Find all WarehouseType'
    end

    def warehouses
      Warehouse.all
    end

    field :warehouse, Types::WarehouseType, null: false do
      argument :id, ID, required: true
      description 'Find a Warehouse by ID'
    end

    def warehouse(id:)
      Warehouse.find(id)
    end

  end
end
