module Types
  class MutationType < Types::BaseObject
    field :create_product_mutation, mutation: Mutations::CreateProductMutation
    field :create_product_category_mutation, mutation: Mutations::CreateProductCategoryMutation
  end
end
