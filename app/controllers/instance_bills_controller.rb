class InstanceBillsController < ApplicationController
  before_action :set_instance_bill, only: [:show, :edit, :update, :destroy]

  # GET /instance_bills
  # GET /instance_bills.json
  def index
    @instance_bills = InstanceBill.all
  end

  # GET /instance_bills/1
  # GET /instance_bills/1.json
  def show
  end

  # GET /instance_bills/new
  def new
    @instance_bill = InstanceBill.new
  end

  # GET /instance_bills/1/edit
  def edit
  end

  # POST /instance_bills
  # POST /instance_bills.json
  def create
    @instance_bill = InstanceBill.new(instance_bill_params)

    respond_to do |format|
      if @instance_bill.save
        format.html { redirect_to @instance_bill, notice: 'Instance bill was successfully created.' }
        format.json { render :show, status: :created, location: @instance_bill }
      else
        format.html { render :new }
        format.json { render json: @instance_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instance_bills/1
  # PATCH/PUT /instance_bills/1.json
  def update
    respond_to do |format|
      if @instance_bill.update(instance_bill_params)
        format.html { redirect_to @instance_bill, notice: 'Instance bill was successfully updated.' }
        format.json { render :show, status: :ok, location: @instance_bill }
      else
        format.html { render :edit }
        format.json { render json: @instance_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instance_bills/1
  # DELETE /instance_bills/1.json
  def destroy
    @instance_bill.destroy
    respond_to do |format|
      format.html { redirect_to instance_bills_url, notice: 'Instance bill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instance_bill
      @instance_bill = InstanceBill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instance_bill_params
      params.require(:instance_bill).permit(:name, :total_vcpu, :total_ram, :total_vdisk, :total_cost, :enabled)
    end
end
