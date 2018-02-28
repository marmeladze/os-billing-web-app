class BillUnitsController < ApplicationController
  before_action :set_bill_unit, only: [:show, :edit, :update, :destroy]

  # GET /bill_units
  # GET /bill_units.json
  def index
    @bill_units = BillUnit.all
  end

  # GET /bill_units/1
  # GET /bill_units/1.json
  def show
  end

  # GET /bill_units/new
  def new
    @bill_unit = BillUnit.new
  end

  # GET /bill_units/1/edit
  def edit
  end

  # POST /bill_units
  # POST /bill_units.json
  def create
    @bill_unit = BillUnit.new(bill_unit_params)

    respond_to do |format|
      if @bill_unit.save
        format.html { redirect_to @bill_unit, notice: 'Bill unit was successfully created.' }
        format.json { render :show, status: :created, location: @bill_unit }
      else
        format.html { render :new }
        format.json { render json: @bill_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bill_units/1
  # PATCH/PUT /bill_units/1.json
  def update
    respond_to do |format|
      if @bill_unit.update(bill_unit_params)
        format.html { redirect_to @bill_unit, notice: 'Bill unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill_unit }
      else
        format.html { render :edit }
        format.json { render json: @bill_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_units/1
  # DELETE /bill_units/1.json
  def destroy
    @bill_unit.destroy
    respond_to do |format|
      format.html { redirect_to bill_units_url, notice: 'Bill unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_unit
      @bill_unit = BillUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_unit_params
      params.require(:bill_unit).permit(:vcpu, :ram, :vdisk, :date, :enabled)
    end
end
