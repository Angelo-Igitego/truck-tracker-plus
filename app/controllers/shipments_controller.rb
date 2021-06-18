class ShipmentsController < ApplicationController
  before_action :set_shipment, only: %i[ show edit update destroy track ]


  def track

  end


  # GET /shipments or /shipments.json
  def index
    @shipments = Shipment.all
  end

  # GET /shipments/1 or /shipments/1.json
  def show
  end

  # GET /shipments/new
  def new
    @shipment = Shipment.new
  end

  # GET /shipments/1/edit
  def edit
  end

  # POST /shipments or /shipments.json
  def create
    @shipment = Shipment.new(shipment_params)

    respond_to do |format|
      if @shipment.save
        format.html { redirect_to @shipment, notice: "Shipment was successfully created." }
        format.json { render :show, status: :created, location: @shipment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipments/1 or /shipments/1.json
  def update
    respond_to do |format|
      if @shipment.update(shipment_params)
        format.html { redirect_to @shipment, notice: "Shipment was successfully updated." }
        format.json { render :show, status: :ok, location: @shipment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipments/1 or /shipments/1.json
  def destroy
    @shipment.destroy
    respond_to do |format|
      format.html { redirect_to shipments_url, notice: "Shipment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment
      if params[:id]
        @shipment = Shipment.find(params[:id])
      elsif params[:number]
        @shipment = Shipment.find_by(number: params[:number])
      end
    end

    # Only allow a list of trusted parameters through.
    def shipment_params
      params.require(:shipment).permit(:number, :documents_received_at, :vessel_id, :shipping_line_id, :loading_port_id, :offloading_port_id, :eta_to_offloading_port, :bearthed_at, :discharged_at, :shipper_name, :remarks)
    end
  end
