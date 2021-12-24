module Mutations
  class CreateProductMutation < BaseMutation
    # Input
    argument :name, String, required: true
    argument :description, String, required: true
    argument :product_category_id, Integer, required: true
    
    # Output
    field :product, Types::ProductType, null: false
    field :errors, [String], null: false

    def resolve(name:, description:)
      product = Product.new(name: name, description: description)

      if product.save then
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
