class InstancesController < ApplicationController
  before_action :set_instance, only: [:show, :edit, :update, :destroy]
  before_action :set_related, only: [:new, :edit]

  # GET /instances
  # GET /instances.json
  def index
    @instances = Instance.all
  end

  # GET /instances/1
  # GET /instances/1.json
  def show
  end

  # GET /instances/new
  def new
    @instance = Instance.new
  end

  # GET /instances/1/edit
  def edit
  end

  # POST /instances
  # POST /instances.json
  def create
    
    _instance = COMPUTE.servers.create name: instance_params[:name],
                                       image_ref: instance_params[:image_id],
                                       flavor_ref: instance_params[:flavor_id]
    InstancesWorker.perform_async
    @instance = Instance.find_by(uid: _instance.id)
    redirect_to @instance, notices: 'Instance succesfully created'
  end

  # PATCH/PUT /instances/1
  # PATCH/PUT /instances/1.json
  def update
    respond_to do |format|
      if @instance.update(instance_params)
        format.html { redirect_to @instance, notice: 'Instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @instance }
      else
        format.html { render :edit }
        format.json { render json: @instance.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @instance.destroy
    respond_to do |format|
      format.html { redirect_to instances_url, notice: 'Instance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_related
    @flavors = Flavor.usable.pluck(:name, :os_id)
    @images  = Image.usable.pluck(:name, :uid)
  end
    
  def set_instance
    @instance = Instance.find(params[:id])
  end

  def instance_params
    params.require(:instance).permit(:name, :flavor_id, :image_id)
  end

end
