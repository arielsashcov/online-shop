module Mutations
  class UpdateProduct < BaseMutation
      # Input
      argument :id, ID, required: true
      argument :name, String, required: false
      argument :description, String, required: false
      argument :product_category_id, ID, required: false
      argument :warehouse_id, ID, required: false
      
      # Output
      field :success, Boolean, null: false
      field :errors, [String], null: false
      field :product, Types::ProductType, null: false
  
      def resolve(id:, **args)
        product = Product.find(id)
  
        if product.update(args)
          {
            success: true,
            product: product,
            errors: []
          }
        else
          {
            success: false,
            product: nil,
            errors: product.errors.full_messages
          }
        end
      
      rescue ActiveRecord::RecordNotFound
        return {success: false, product: nil, errors: ['record-not-found']}
      end
      
  end
end
