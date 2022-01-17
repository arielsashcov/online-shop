module Mutations
  class UpdateWarehouse < BaseMutation

    # Input
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :description, String, required: false
    
    # Output
    field :success, Boolean, null: false
    field :errors, [String], null: false
    field :warehouse, Types::WarehouseType, null: false

    def resolve(id:, **args)
      warehouse = Warehouse.find(id)

      if warehouse.update(args)
        {
          success: true,
          warehouse: warehouse,
          errors: []
        }
      else
        {
          success: false,
          warehouse: nil,
          errors: warehouse.errors.full_messages
        }
      end
    
    rescue ActiveRecord::RecordNotFound
      return {success: false, warehouse: nil, errors: ['record-not-found']}
    end

  end
end
