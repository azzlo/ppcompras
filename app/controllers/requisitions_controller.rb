class RequisitionsController < ApplicationController
  before_action :set_requisition, only: [:show, :show_supplier, :edit, :update, :set_active_status, :set_as_received, :destroy]

  # GET /requisitions
  # GET /requisitions.json
  def index
    @requisitions = Requisition.all

  end

  # GET /requisitions/1
  # GET /requisitions/1.json
  def show
    @selected_offer = @requisition.offers.where(selected: true).take
     respond_to do |format|
     format.html
     format.json
     format.pdf {render template: 'requisitions/generalreport', pdf:'GeneralReport'}
   end

  end

  def show_supplier
    @offer = @requisition.offers.build
  end


  # GET /requisitions/new
  def new
    number = Requisition.last.id + 1
    @requisition = Requisition.new(material: "hola#{number}")
  end

  # GET /requisitions/1/edit
  def edit
  end

  # POST /requisitions
  # POST /requisitions.json
  def create
    @requisition = Requisition.new(requisition_params)

    respond_to do |format|
      if @requisition.save
        format.html { redirect_to @requisition, notice: 'Requisition was successfully created.' }
        format.json { render :show, status: :created, location: @requisition }
      else
        format.html { render :new }
        format.json { render json: @requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requisitions/1
  # PATCH/PUT /requisitions/1.json
  def update
    respond_to do |format|
      if @requisition.update(requisition_params)
        format.html { redirect_to @requisition, notice: 'Requisition was successfully updated.' }
        format.json { render :show, status: :ok, location: @requisition }
      else
        format.html { render :edit }
        format.json { render json: @requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_active_status
    @requisition.active = true;

    respond_to do |format|
      if @requisition.save
        format.html { redirect_to root_path, notice: 'Requisition was opened to suppliers and email was sent to suppliers'}
      else
        format.html { render :edit }
        format.json { render json: @requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_as_received
    @requisition.active = false
    @requisition.pending = false
    @requisition.complete = true
    @requisition.received_at = Date.today
    @requisition.save
    redirect_to requisition_path(@requisition), notice: 'Congratulations! You was received the order.'
  end

  # DELETE /requisitions/1
  # DELETE /requisitions/1.json
  def destroy
    @requisition.destroy
    respond_to do |format|
      format.html { redirect_to requisitions_url, notice: 'Requisition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requisition
      @requisition = Requisition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requisition_params
      params.require(:requisition).permit(:number, :create_at, :item, :material, :description, :quantity, :unit, :contact_person, :observations)
    end
end
