class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:show, :edit, :update, :destroy, :authorize_data]

  # GET /suppliers
  # GET /suppliers.json
  def index
    :authenticate_user!
    redirect_to myaccount_supplier_path(current_supplier) if supplier_signed_in?
    @suppliers = Supplier.all
  end

  # GET /suppliers/1
  # GET /suppliers/1.json
  def show
  end

  def myaccount
    @supplier = current_supplier
  end

  def authorize_data
    @supplier.data_validation = false
    if @supplier.save
      redirect_to suppliers_url, notice: 'Supplier data was validated. Now the supplier have full access to system'
    else
      redirect_to suppliers_url, alert: 'The system can\'t execute operation, try again.'
    end
  end

  # GET /suppliers/new
  #def new
    # @supplier = Supplier.new
  # end

  # GET /suppliers/1/edit
  def edit
    :authenticate_supplier!
  end

  # POST /suppliers
  # POST /suppliers.json
  def create
    @supplier = Supplier.new(supplier_params)

    respond_to do |format|
      if @supplier.save
        format.html { redirect_to @supplier, notice: 'Supplier was successfully created.' }
        format.json { render :show, status: :created, location: @supplier }
      else
        format.html { render :new }
        format.json { render json: @supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suppliers/1
  # PATCH/PUT /suppliers/1.json
  def update
    respond_to do |format|
      if @supplier.update(supplier_params)
        format.html { redirect_to myaccount_supplier_path, notice: 'Supplier was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplier }
      else
        format.html { render :edit }
        format.json { render json: @supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suppliers/1
  # DELETE /suppliers/1.json
  def destroy
    @supplier.destroy
    respond_to do |format|
      format.html { redirect_to suppliers_url, notice: 'Supplier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier
      @supplier = Supplier.find(params[:id])
    end

    def data_validation
      if current_supplier.data_validation
        redirect_to myaccount_supplier_path
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplier_params
      params.require(:supplier).permit(:name, :address, :city, :country, :postal_code, :phone, :email, :category, :contact, :observations, :bank, :account_number, :number_branch_bank, :region, :last_tax_declaration, :rfc, :account_status, :constitutive_act, :policies)
    end
end
