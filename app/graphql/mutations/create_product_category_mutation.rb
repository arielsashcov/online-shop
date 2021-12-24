module Mutations
  class CreateProductCategoryMutation < BaseMutation
    # Input
    argument :name, String, required: true
    argument :description, String, required: true
    
    # Output
    field :product_category, Types::ProductCategoryType, null: false
    field :errors, [String], null: false

    def resolve(name:, description:)
      product_category = ProductCategory.new(name: name, description: description)

      if product_category.save
        {
          product_category: product_category,
          errors: []
        }
      else
        {
          product_category: nil,
          errors: product_category.errors.full_messages
        }
      end
    end
  end
end
