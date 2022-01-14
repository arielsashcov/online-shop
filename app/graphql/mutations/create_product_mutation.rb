module Mutations
  class CreateProductMutation < BaseMutation
    # Input
    argument :name, String, required: true
    argument :description, String, required: true
    argument :product_category_id, ID, required: true
    argument :warehouse_id, ID, required: true
    
    # Output
    field :product, Types::ProductType, null: false
    field :errors, [String], null: false

    def resolve(name:, description:, product_category_id:, warehouse_id:)
      # Product.new => Saves object locally without attempting to save it
      # Product.create => Initiates the new object, validates and saves it

      product = Product.new(
        name: name, 
        description: description, 
        product_category: ProductCategory.find(product_category_id), 
        warehouse: Warehouse.find(warehouse_id)
      )

      if product.save
        {
          product: product,
          errors: []
        }
      else
        {
          product: nil, 
          errors: product.errors.full_messages
        }
      end
    end
  end
end
