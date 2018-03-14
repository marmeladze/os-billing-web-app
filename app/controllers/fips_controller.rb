class FipsController < ApplicationController
  before_action :set_fip, only: [:show, :edit, :update, :destroy]

  # GET /fips
  # GET /fips.json
  def index
    @fips = Fip.all
  end

  # GET /fips/1
  # GET /fips/1.json
  def show
  end

  # GET /fips/new
  def new
    @fip = Fip.new
  end

  # GET /fips/1/edit
  def edit
  end

  # POST /fips
  # POST /fips.json
  def create
    @fip = Fip.new(fip_params)

    respond_to do |format|
      if @fip.save
        format.html { redirect_to @fip, notice: 'Fip was successfully created.' }
        format.json { render :show, status: :created, location: @fip }
      else
        format.html { render :new }
        format.json { render json: @fip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fips/1
  # PATCH/PUT /fips/1.json
  def update
    respond_to do |format|
      if @fip.update(fip_params)
        format.html { redirect_to @fip, notice: 'Fip was successfully updated.' }
        format.json { render :show, status: :ok, location: @fip }
      else
        format.html { render :edit }
        format.json { render json: @fip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fips/1
  # DELETE /fips/1.json
  def destroy
    @fip.destroy
    respond_to do |format|
      format.html { redirect_to fips_url, notice: 'Fip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fip
      @fip = Fip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fip_params
      params.require(:fip).permit(:status, :tenant_uid, :fixed_ip, :floating_ip, :creation)
    end
end
