module Mutations
  class CreateWarehouse < BaseMutation
    # Input
    argument :name, String, required: true
    argument :description, String, required: true
    
    # Output
    field :warehouse, Types::WarehouseType, null: false
    field :errors, [String], null: false

    def resolve(name:, description:)
      warehouse = Warehouse.new(name: name, description: description)

      if warehouse.save
        {
          warehouse: warehouse,
          errors: []
        }
      else
        {
          warehouse: nil,
          errors: warehouse.errors.full_messages
        }
      end
    end
  end
end
