module Types
  class MutationType < Types::BaseObject
    field :update_warehouse, mutation: Mutations::UpdateWarehouse
    field :create_warehouse, mutation: Mutations::CreateWarehouse
    field :signin_user, mutation: Mutations::SignInUser
    field :create_user, mutation: Mutations::CreateUser
    field :create_product_mutation, mutation: Mutations::CreateProductMutation
    field :create_product_category_mutation, mutation: Mutations::CreateProductCategoryMutation
  end
end
