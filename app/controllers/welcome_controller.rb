class WelcomeController < ApplicationController
  def index
    @requisitions = Requisition.all.limit(5)
  end
end
