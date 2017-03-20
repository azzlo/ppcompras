json.extract! requisition, :id, :number, :create_at, :item, :material, :description, :quantity, :unit, :contact_person, :observations, :created_at, :updated_at
json.url requisition_url(requisition, format: :json)
