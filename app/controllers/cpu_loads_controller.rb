class CpuLoadsController < ApplicationController
  before_action :set_cpu_load, only: [:show, :edit, :update, :destroy]

  # GET /cpu_loads
  # GET /cpu_loads.json
  def index
    @cpu_loads = CpuLoad.all
  end

  # GET /cpu_loads/1
  # GET /cpu_loads/1.json
  def show
  end

  # GET /cpu_loads/new
  def new
    @cpu_load = CpuLoad.new
  end

  # GET /cpu_loads/1/edit
  def edit
  end

  # POST /cpu_loads
  # POST /cpu_loads.json
  def create
    @cpu_load = CpuLoad.new(cpu_load_params)

    respond_to do |format|
      if @cpu_load.save
        format.html { redirect_to @cpu_load, notice: 'Cpu load was successfully created.' }
        format.json { render :show, status: :created, location: @cpu_load }
      else
        format.html { render :new }
        format.json { render json: @cpu_load.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpu_loads/1
  # PATCH/PUT /cpu_loads/1.json
  def update
    respond_to do |format|
      if @cpu_load.update(cpu_load_params)
        format.html { redirect_to @cpu_load, notice: 'Cpu load was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpu_load }
      else
        format.html { render :edit }
        format.json { render json: @cpu_load.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpu_loads/1
  # DELETE /cpu_loads/1.json
  def destroy
    @cpu_load.destroy
    respond_to do |format|
      format.html { redirect_to cpu_loads_url, notice: 'Cpu load was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpu_load
      @cpu_load = CpuLoad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpu_load_params
      params.require(:cpu_load).permit(:instance_id, :percentage, :observed_at)
    end
end
