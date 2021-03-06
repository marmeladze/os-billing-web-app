class OwnersController < ApplicationController
  # before_action :logged_in_user
  before_action :set_owner, only: [:show, :edit, :update, :destroy]
  # GET /owners
  # GET /owners.json
  def index
    @owners = Owner.all
    OwnersWorker.perform_async
    FlavorsWorker.perform_async
    ImagesWorker.perform_async
    InstancesWorker.perform_async
    VolumesWorker.perform_async
    NetworkWorker.perform_async
  end

  # GET /owners/1
  # GET /owners/1.json
  def show
    @instances = @owner.instances
    @active = @owner.instance_by_status "ACTIVE"
    @suspended = @owner.instance_by_status "SUSPEND"
    @shutoff = @owner.instance_by_status "SHUTOFF"
    @volumes = @owner.volumes
    @available = @volumes.where(available: true)
    @attached = @volumes.where(available: false)
    @wallet = @owner.wallet
    @routers = @owner.routers
    @load_balancers = @owner.load_balancers
    @fips = @owner.fips
    @firewalls = @owner.firewalls
  end

  # GET /owners/new
  def new
    @owner = Owner.new
  end

  # GET /owners/1/edit
  def edit
  end

  # POST /owners
  # POST /owners.json
  def create
    @owner = Owner.new(owner_params)

    respond_to do |format|
      if @owner.save
        format.html { redirect_to @owner, notice: 'Owner was successfully created.' }
        format.json { render :show, status: :created, location: @owner }
      else
        format.html { render :new }
        format.json { render json: @owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /owners/1
  # PATCH/PUT /owners/1.json
  def update
    respond_to do |format|
      if @owner.update(owner_params)
        format.html { redirect_to @owner, notice: 'Owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @owner }
      else
        format.html { render :edit }
        format.json { render json: @owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /owners/1
  # DELETE /owners/1.json
  def destroy
    @owner.destroy
    respond_to do |format|
      format.html { redirect_to owners_url, notice: 'Owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owner
      @owner = Owner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def owner_params
      params.require(:owner).permit(:uid, :email, :tenant)
    end
end
