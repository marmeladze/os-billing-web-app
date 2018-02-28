class TenantBillsController < ApplicationController
  before_action :set_tenant_bill, only: [:show, :edit, :update, :destroy]

  # GET /tenant_bills
  # GET /tenant_bills.json
  def index
    @tenant_bills = TenantBill.all
  end

  # GET /tenant_bills/1
  # GET /tenant_bills/1.json
  def show
  end

  # GET /tenant_bills/new
  def new
    @tenant_bill = TenantBill.new
  end

  # GET /tenant_bills/1/edit
  def edit
  end

  # POST /tenant_bills
  # POST /tenant_bills.json
  def create
    @tenant_bill = TenantBill.new(tenant_bill_params)

    respond_to do |format|
      if @tenant_bill.save
        format.html { redirect_to @tenant_bill, notice: 'Tenant bill was successfully created.' }
        format.json { render :show, status: :created, location: @tenant_bill }
      else
        format.html { render :new }
        format.json { render json: @tenant_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tenant_bills/1
  # PATCH/PUT /tenant_bills/1.json
  def update
    respond_to do |format|
      if @tenant_bill.update(tenant_bill_params)
        format.html { redirect_to @tenant_bill, notice: 'Tenant bill was successfully updated.' }
        format.json { render :show, status: :ok, location: @tenant_bill }
      else
        format.html { render :edit }
        format.json { render json: @tenant_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tenant_bills/1
  # DELETE /tenant_bills/1.json
  def destroy
    @tenant_bill.destroy
    respond_to do |format|
      format.html { redirect_to tenant_bills_url, notice: 'Tenant bill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenant_bill
      @tenant_bill = TenantBill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tenant_bill_params
      params.require(:tenant_bill).permit(:tenant_id, :total_vcpu, :total_ram, :total_vdisk, :bill_month, :totoal_usage, :status, :enabled)
    end
end
