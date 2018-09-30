class InvestmentContractDetsController < ApplicationController
  before_action :set_investment_contract_det, only: [:show, :edit, :update, :destroy]

  # GET /investment_contract_dets
  # GET /investment_contract_dets.json
  def index
    @investment_contract_dets = InvestmentContractDet.all
  end

  # GET /investment_contract_dets/1
  # GET /investment_contract_dets/1.json
  def show
  end

  # GET /investment_contract_dets/new
  def new
    @investment_contract_det = InvestmentContractDet.new
  end

  # GET /investment_contract_dets/1/edit
  def edit
  end

  # POST /investment_contract_dets
  # POST /investment_contract_dets.json
  def create
    @investment_contract_det = InvestmentContractDet.new(investment_contract_det_params)

    respond_to do |format|
      if @investment_contract_det.save
        format.html { redirect_to @investment_contract_det, notice: 'Investment contract det was successfully created.' }
        format.json { render :show, status: :created, location: @investment_contract_det }
      else
        format.html { render :new }
        format.json { render json: @investment_contract_det.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investment_contract_dets/1
  # PATCH/PUT /investment_contract_dets/1.json
  def update
    respond_to do |format|
      if @investment_contract_det.update(investment_contract_det_params)
        format.html { redirect_to @investment_contract_det, notice: 'Investment contract det was successfully updated.' }
        format.json { render :show, status: :ok, location: @investment_contract_det }
      else
        format.html { render :edit }
        format.json { render json: @investment_contract_det.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investment_contract_dets/1
  # DELETE /investment_contract_dets/1.json
  def destroy
    @investment_contract_det.destroy
    respond_to do |format|
      format.html { redirect_to investment_contract_dets_url, notice: 'Investment contract det was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investment_contract_det
      @investment_contract_det = InvestmentContractDet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def investment_contract_det_params
      params.require(:investment_contract_det).permit(:idetContribDay)
    end
end
