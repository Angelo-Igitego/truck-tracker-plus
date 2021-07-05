class ContainersController < ApplicationController
  before_action :set_container, only: %i[ show edit update destroy]



  def tracking
    @container = Container.includes(:driver, :port_of_loading, :truck).find_by_number(params[:number])

    
    if @container
      render :json => @container.to_json(include: [:driver, :port_of_loading, :truck])
    else
      render js: "" 
    end
  end


  def landing_page
  end

  # GET /containers or /containers.json
  def index
    if current_user.driver?
      @containers = current_user.containers
      
    else
      @containers = Container.all 
      
    end
  end

  # GET /containers/1 or /containers/1.json
  def show
  end

  # GET /containers/new
  def new
    @container = Container.new
  end

  # GET /containers/1/edit
  def edit
  end

  # POST /containers or /containers.json
  def create
    @container = Container.new(container_params)

    respond_to do |format|
      if @container.save
        format.html { redirect_to @container, notice: "Container was successfully created." }
        format.json { render :show, status: :created, location: @container }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @container.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /containers/1 or /containers/1.json
  def update
    respond_to do |format|
      if @container.update(container_params)
        format.html { redirect_to @container, notice: "Container was successfully updated." }
        format.json { render :show, status: :ok, location: @container }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @container.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /containers/1 or /containers/1.json
  def destroy
    @container.destroy
    respond_to do |format|
      format.html { redirect_to containers_url, notice: "Container was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_container
      if params[:id]
        @container = Container.find(params[:id])
      elsif params[:number]
        @container = Container.find_by_number(params[:number])
      end
    end

    # Only allow a list of trusted parameters through.
    def container_params
      params.require(:container).permit(:number, :departed_dar_at, :offloaded_at, :customer_id, :driver_id, :docs_rcd, :shipper, :port_of_loading_id, :commodity, :bill_of_ladding_number, :service, :size, :gross_weight_kgs, :shipping_line_id, :eta_dar, :vessel_berthe_date, :vessel_discharge_date, :loading_at_dar, :truck_id, :truck_position, :eta_border, :etd_border, :offloading_site, :eta_site, :offloaded, :remark, :departed_dar_at, :shipment_number)
    end
  end
