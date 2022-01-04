module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :create_product_mutation, mutation: Mutations::CreateProductMutation
    field :create_product_category_mutation, mutation: Mutations::CreateProductCategoryMutation
  end
end