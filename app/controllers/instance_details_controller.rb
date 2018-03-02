class InstanceDetailsController < ApplicationController
  before_action :set_instance_detail, only: [:show, :edit, :update, :destroy]

  # GET /instance_details
  # GET /instance_details.json
  def index
    @instance_details = InstanceDetail.all
  end

  # GET /instance_details/1
  # GET /instance_details/1.json
  def show
  end

  # GET /instance_details/new
  def new
    @instance_detail = InstanceDetail.new
  end

  # GET /instance_details/1/edit
  def edit
  end

  # POST /instance_details
  # POST /instance_details.json
  def create
    @instance_detail = InstanceDetail.new(instance_detail_params)

    respond_to do |format|
      if @instance_detail.save
        format.html { redirect_to @instance_detail, notice: 'Instance detail was successfully created.' }
        format.json { render :show, status: :created, location: @instance_detail }
      else
        format.html { render :new }
        format.json { render json: @instance_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instance_details/1
  # PATCH/PUT /instance_details/1.json
  def update
    respond_to do |format|
      if @instance_detail.update(instance_detail_params)
        format.html { redirect_to @instance_detail, notice: 'Instance detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @instance_detail }
      else
        format.html { render :edit }
        format.json { render json: @instance_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instance_details/1
  # DELETE /instance_details/1.json
  def destroy
    @instance_detail.destroy
    respond_to do |format|
      format.html { redirect_to instance_details_url, notice: 'Instance detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instance_detail
      @instance_detail = InstanceDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instance_detail_params
      params.require(:instance_detail).permit(:instance_id_id, :zone, :state, :status, :created)
    end
end
