class WelcomeController < ApplicationController

  def index
    if supplier_signed_in?
      redirect_to welcome_index_supplier_path
    else
      authenticate_user!
      @active_requisitions = Requisition.where(active: true)
      @pending_requisitions = Requisition.where(pending: true)
      @available_requisitions = Requisition.where("active = ? AND pending = ? AND complete = ?", false, false, false)
    end
  end


  def index_supplier
    if user_signed_in?
      redirect_to  root_path
    else
      authenticate_supplier!

      @available_requisitions = Requisition.where(active: true)
      # @requisitions_to_suply = Requisition.where(pending: true)   offers.where(selected:true)
      @requisitions_to_suply = Requisition.joins(:offers).where(offers: { selected: true, supplier_id: current_supplier.id }, requisitions: { pending: true})
    end
  end
end
