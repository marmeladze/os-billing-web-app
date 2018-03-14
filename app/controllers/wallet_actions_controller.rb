class WalletActionsController < ApplicationController
  before_action :set_wallet_action, only: [:show, :edit, :update, :destroy]

  # GET /wallet_actions
  # GET /wallet_actions.json
  def index
    @wallet_actions = WalletAction.all
  end

  # GET /wallet_actions/1
  # GET /wallet_actions/1.json
  def show
  end

  # GET /wallet_actions/new
  def new
    @wallet_action = WalletAction.new
  end

  # GET /wallet_actions/1/edit
  def edit
  end

  # POST /wallet_actions
  # POST /wallet_actions.json
  def create
    @wallet_action = WalletAction.new(wallet_action_params)

    respond_to do |format|
      if @wallet_action.save
        format.html { redirect_to @wallet_action, notice: 'Wallet action was successfully created.' }
        format.json { render :show, status: :created, location: @wallet_action }
      else
        format.html { render :new }
        format.json { render json: @wallet_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wallet_actions/1
  # PATCH/PUT /wallet_actions/1.json
  def update
    respond_to do |format|
      if @wallet_action.update(wallet_action_params)
        format.html { redirect_to @wallet_action, notice: 'Wallet action was successfully updated.' }
        format.json { render :show, status: :ok, location: @wallet_action }
      else
        format.html { render :edit }
        format.json { render json: @wallet_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wallet_actions/1
  # DELETE /wallet_actions/1.json
  def destroy
    @wallet_action.destroy
    respond_to do |format|
      format.html { redirect_to wallet_actions_url, notice: 'Wallet action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wallet_action
      @wallet_action = WalletAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wallet_action_params
      params.require(:wallet_action).permit(:wallet_id, :action_type, :amount)
    end
end
