class TripContainersController < ApplicationController
  before_action :set_trip_container, only: %i[ show edit update destroy ]

  # GET /trip_containers or /trip_containers.json
  def index
    @trip_containers = TripContainer.all
  end

  # GET /trip_containers/1 or /trip_containers/1.json
  def show
  end

  # GET /trip_containers/new
  def new
    @trip_container = TripContainer.new
  end

  # GET /trip_containers/1/edit
  def edit
  end

  # POST /trip_containers or /trip_containers.json
  def create
    @trip_container = TripContainer.new(trip_container_params)

    respond_to do |format|
      if @trip_container.save
        format.html { redirect_to @trip_container, notice: "Trip container was successfully created." }
        format.json { render :show, status: :created, location: @trip_container }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trip_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_containers/1 or /trip_containers/1.json
  def update
    respond_to do |format|
      if @trip_container.update(trip_container_params)
        format.html { redirect_to @trip_container, notice: "Trip container was successfully updated." }
        format.json { render :show, status: :ok, location: @trip_container }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trip_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_containers/1 or /trip_containers/1.json
  def destroy
    @trip_container.destroy
    respond_to do |format|
      format.html { redirect_to trip_containers_url, notice: "Trip container was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_container
      @trip_container = TripContainer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trip_container_params
      params.require(:trip_container).permit(:trip_id, :container_number, :container_height, :container_weight, :container_length, :container_gross_weight, :container_net_weight, :container_tare, :container_commodity, :customer_id)
    end
end
