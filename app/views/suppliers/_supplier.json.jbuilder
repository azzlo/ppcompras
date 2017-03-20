json.extract! supplier, :id, :name, :address, :city, :country, :postal_code, :phone, :email, :category, :contact, :observations, :bank, :account_number, :number_branch_bank, :region, :last_tax_declaration, :rfc, :account_status, :constitutive_act, :policies, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
