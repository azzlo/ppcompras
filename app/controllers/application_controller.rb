class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :supplier_data_validation

  def after_sign_in_path_for(supplier)
    if supplier_signed_in?
      if current_supplier.name.blank? || current_supplier.address.blank? || current_supplier.city.blank? || current_supplier.country.blank? || current_supplier.postal_code.blank? || current_supplier.phone.blank? || current_supplier.contact.blank? || current_supplier.bank.blank? || current_supplier.account_number.blank? || current_supplier.number_branch_bank.blank? || current_supplier.region.blank? || current_supplier.last_tax_declaration.blank? || current_supplier.rfc.blank? || current_supplier.account_status.blank? || current_supplier.constitutive_act.blank? || current_supplier.policies.blank?
        edit_supplier_path(current_supplier)
      else
        root_path
      end
    else
      root_path
    end
  end

  def supplier_data_validation
    if supplier_signed_in?
      if controller_name != 'suppliers'
        if current_supplier.data_validation
          redirect_to edit_supplier_path(current_supplier), alert: 'You need update your data and wait to an administrtor validates your info. If your info is updated wait and try more later.' 
        end
      end
    end
  end

end
