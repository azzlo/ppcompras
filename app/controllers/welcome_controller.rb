class WelcomeController < ApplicationController
  def index
    @active_requisitions = Requisition.where(active: true)
    @available_requisitions = Requisition.where("active = ? AND pending = ? AND complete = ?", false, false, false)
  end
end
