class TripUpdatesController < ApplicationController
  before_action :set_trip_update, only: %i[ show edit update destroy ]

  # GET /trip_updates or /trip_updates.json
  def index
    @trip_updates = TripUpdate.all
  end

  # GET /trip_updates/1 or /trip_updates/1.json
  def show
  end

  # GET /trip_updates/new
  def new
    @trip_update = TripUpdate.new
  end

  # GET /trip_updates/1/edit
  def edit
  end

  # POST /trip_updates or /trip_updates.json
  def create
    @trip_update = TripUpdate.new(trip_update_params)

    respond_to do |format|
      if @trip_update.save
        format.html { redirect_to @trip_update, notice: "Trip update was successfully created." }
        format.json { render :show, status: :created, location: @trip_update }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trip_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_updates/1 or /trip_updates/1.json
  def update
    respond_to do |format|
      if @trip_update.update(trip_update_params)
        format.html { redirect_to @trip_update, notice: "Trip update was successfully updated." }
        format.json { render :show, status: :ok, location: @trip_update }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trip_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_updates/1 or /trip_updates/1.json
  def destroy
    @trip_update.destroy
    respond_to do |format|
      format.html { redirect_to trip_updates_url, notice: "Trip update was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_update
      @trip_update = TripUpdate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trip_update_params
      params.require(:trip_update).permit(:trip_id, :location_details, :eta_border, :eta_site, :updated_by_user_id, :latitude, :longitude, :country, :province, :district)
    end
end
