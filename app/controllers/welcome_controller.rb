class WelcomeController < ApplicationController

  def index
    if supplier_signed_in?
      redirect_to welcome_index_supplier_path
    else
      authenticate_user!
      @active_requisitions = Requisition.where(active: true)
      @available_requisitions = Requisition.where("active = ? AND pending = ? AND complete = ?", false, false, false)
    end
  end


  def index_supplier
    if user_signed_in?
      redirect_to  root_path
    else
      authenticate_supplier!

      @available_requisitions = Requisition.where(active: true)
      @requisitions_to_suply = current_supplier.requisitions.where(pending: true)
    end
  end
end
