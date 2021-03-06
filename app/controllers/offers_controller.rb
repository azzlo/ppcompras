class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy, :set_as_recommended, :set_selected]
  before_action :set_requisition, only: [:show, :new, :create, :set_as_recommended, :set_selected]

  # GET /offers
  # GET /offers.json
  def index
    @offers = Offer.all
  end

  # GET /offers/1
  # GET /offers/1.json
  def show
    @requisition=@offer.requisition

    respond_to do |format|
    format.html
    format.json
    format.pdf {render template: 'offers/specificreport', pdf:'SpecificReport'}
  end
  end

  # GET /offers/new
  def new
    authenticate_supplier!
    @supplier_offers = @requisition.offers.where(supplier_id: current_supplier.id)
    @offer = @requisition.offers.build
  end

  # GET /offers/1/edit
  def edit
  end

  # POST /offers
  # POST /offers.json
  def create
    @supplier_offers = @requisition.offers.where(supplier_id: current_supplier.id)
    @offer = @requisition.offers.build(offer_params)
    @offer.supplier = current_supplier
    @offer.recommended = true if @requisition.offers.where(supplier_id: current_supplier.id).count == 0

    respond_to do |format|
      if @offer.save
        format.html { redirect_to new_requisition_offer_path(@requisition), notice: 'Offer was successfully created.' }
        format.json { render :show, status: :created, location: @offer }
      else
        format.html { render :new }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_as_recommended
    if @requisition.offers.count > 1
      @requisition.offers.each do |offer|
        offer.recommended = false
        offer.save
      end
      @offer.recommended = true
      @offer.save
    end
    redirect_to new_requisition_offer_path(@requisition, @offer)
  end

  def set_selected
    @offer.selected = true
    @offer.requisition.active = false
    @offer.requisition.pending = true
    @offer.save
    @offer.requisition.save
    redirect_to requisition_path(@offer.requisition)
  end

  # PATCH/PUT /offers/1
  # PATCH/PUT /offers/1.json
  def update
    respond_to do |format|
      if @offer.update(offer_params)
        format.html { redirect_to new_requisition_offer_path(@requisition), notice: 'Offer was successfully updated.' }
        format.json { render :show, status: :ok, location: @offer }
      else
        format.html { render :edit }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offers/1
  # DELETE /offers/1.json
  def destroy
    @offer.destroy
    respond_to do |format|
      format.html { redirect_to new_requisition_offer_path(@requisition), notice: 'Offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
    end

    def set_requisition
      @requisition_clean = Requisition.find(params[:requisition_id])
      @requisition = Requisition.find(params[:requisition_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_params
      params.require(:offer).permit(:unit_pricing, :delivery_days, :validity, :observations, :recommended, :credit_days, :requisition_id)
    end
end
