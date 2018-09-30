class CarRentalContractDetsController < ApplicationController
  before_action :set_car_rental_contract_det, only: [:show, :edit, :update, :destroy]

  # GET /car_rental_contract_dets
  # GET /car_rental_contract_dets.json
  def index
    @car_rental_contract_dets = CarRentalContractDet.all
  end

  # GET /car_rental_contract_dets/1
  # GET /car_rental_contract_dets/1.json
  def show
  end

  # GET /car_rental_contract_dets/new
  def new
    @car_rental_contract_det = CarRentalContractDet.new
  end

  # GET /car_rental_contract_dets/1/edit
  def edit
  end

  # POST /car_rental_contract_dets
  # POST /car_rental_contract_dets.json
  def create
    @car_rental_contract_det = CarRentalContractDet.new(car_rental_contract_det_params)

    respond_to do |format|
      if @car_rental_contract_det.save
        format.html { redirect_to @car_rental_contract_det, notice: 'Car rental contract det was successfully created.' }
        format.json { render :show, status: :created, location: @car_rental_contract_det }
      else
        format.html { render :new }
        format.json { render json: @car_rental_contract_det.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_rental_contract_dets/1
  # PATCH/PUT /car_rental_contract_dets/1.json
  def update
    respond_to do |format|
      if @car_rental_contract_det.update(car_rental_contract_det_params)
        format.html { redirect_to @car_rental_contract_det, notice: 'Car rental contract det was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_rental_contract_det }
      else
        format.html { render :edit }
        format.json { render json: @car_rental_contract_det.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_rental_contract_dets/1
  # DELETE /car_rental_contract_dets/1.json
  def destroy
    @car_rental_contract_det.destroy
    respond_to do |format|
      format.html { redirect_to car_rental_contract_dets_url, notice: 'Car rental contract det was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_rental_contract_det
      @car_rental_contract_det = CarRentalContractDet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_rental_contract_det_params
      params.require(:car_rental_contract_det).permit(:rdetDepDay, :rdetNoDay, :rdetCarPrice, :rdetDriverPrice)
    end
end
