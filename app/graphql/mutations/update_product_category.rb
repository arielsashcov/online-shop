module Mutations
  class UpdateProductCategory < BaseMutation
    # Input
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :description, String, required: false
    
    # Output
    field :success, Boolean, null: false
    field :errors, [String], null: false
    field :product_category, Types::ProductCategoryType, null: false

    def resolve(id:, **args)
      product_category = ProductCategory.find(id)

      if product_category.update(args)
        {
          success: true,
          product_category: product_category,
          errors: []
        }
      else
        {
          success: false,
          product_category: nil,
          errors: product_category.errors.full_messages
        }
      end
    
    rescue ActiveRecord::RecordNotFound
      return {success: false, product_category: nil, errors: ['record-not-found']}
    end
  end
end
