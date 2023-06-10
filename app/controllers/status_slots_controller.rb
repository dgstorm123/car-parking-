class StatusSlotsController < ApplicationController
  before_action :set_status_slot, only: %i[ show edit update destroy ]

  # GET /status_slots or /status_slots.json
  def index
    @status_slots = StatusSlot.all
  end

  # GET /status_slots/1 or /status_slots/1.json
  def show
  end

  # GET /status_slots/new
  def new
    @status_slot = StatusSlot.new
  end

  # GET /status_slots/1/edit
  def edit
  end

  # POST /status_slots or /status_slots.json
  def create
    @status_slot = StatusSlot.new(status_slot_params)

    respond_to do |format|
      if @status_slot.save
        format.html { redirect_to status_slot_url(@status_slot), notice: "Status slot was successfully created." }
        format.json { render :show, status: :created, location: @status_slot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @status_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_slots/1 or /status_slots/1.json
  def update
    respond_to do |format|
      if @status_slot.update(status_slot_params)
        format.html { redirect_to status_slot_url(@status_slot), notice: "Status slot was successfully updated." }
        format.json { render :show, status: :ok, location: @status_slot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @status_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_slots/1 or /status_slots/1.json
  def destroy
    @status_slot.destroy

    respond_to do |format|
      format.html { redirect_to status_slots_url, notice: "Status slot was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_slot
      @status_slot = StatusSlot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def status_slot_params
      params.require(:status_slot).permit(:vehicle_type, :license_plate, :status, :slots)
    end
end
