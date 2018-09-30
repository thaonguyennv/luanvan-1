class TheDriversController < ApplicationController
  before_action :set_the_driver, only: [:show, :edit, :update, :destroy]

  # GET /the_drivers
  # GET /the_drivers.json
  def index
    @the_drivers = TheDriver.all
  end

  # GET /the_drivers/1
  # GET /the_drivers/1.json
  def show
  end

  # GET /the_drivers/new
  def new
    @the_driver = TheDriver.new
  end

  # GET /the_drivers/1/edit
  def edit
  end

  # POST /the_drivers
  # POST /the_drivers.json
  def create
    @the_driver = TheDriver.new(the_driver_params)

    respond_to do |format|
      if @the_driver.save
        format.html { redirect_to @the_driver, notice: 'The driver was successfully created.' }
        format.json { render :show, status: :created, location: @the_driver }
      else
        format.html { render :new }
        format.json { render json: @the_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /the_drivers/1
  # PATCH/PUT /the_drivers/1.json
  def update
    respond_to do |format|
      if @the_driver.update(the_driver_params)
        format.html { redirect_to @the_driver, notice: 'The driver was successfully updated.' }
        format.json { render :show, status: :ok, location: @the_driver }
      else
        format.html { render :edit }
        format.json { render json: @the_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /the_drivers/1
  # DELETE /the_drivers/1.json
  def destroy
    @the_driver.destroy
    respond_to do |format|
      format.html { redirect_to the_drivers_url, notice: 'The driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_the_driver
      @the_driver = TheDriver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def the_driver_params
      params.require(:the_driver).permit(:thedriverPrice, :thedriverWork)
    end
end
