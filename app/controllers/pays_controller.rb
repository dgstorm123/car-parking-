class PaysController < ApplicationController
  before_action :set_pay, only: %i[ show edit update destroy ]

  # GET /pays or /pays.json
  def index
    @pays = Pay.all
  end

  # GET /pays/1 or /pays/1.json
  def show
  end

  # GET /pays/new
  def new
    @pay = Pay.new
  end

  # GET /pays/1/edit
  def edit
  end

  # POST /pays or /pays.json
  def create
    @pay = Pay.new(pay_params)

    respond_to do |format|
      if @pay.save
        format.html { redirect_to pay_url(@pay), notice: "Pay was successfully created." }
        format.json { render :show, status: :created, location: @pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pays/1 or /pays/1.json
  def update
    respond_to do |format|
      if @pay.update(pay_params)
        format.html { redirect_to pay_url(@pay), notice: "Pay was successfully updated." }
        format.json { render :show, status: :ok, location: @pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pays/1 or /pays/1.json
  def destroy
    @pay.destroy

    respond_to do |format|
      format.html { redirect_to pays_url, notice: "Pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pay
      @pay = Pay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pay_params
      params.require(:pay).permit(:car_plate, :check_out_time, :amount, :pay_option)
    end
end
