class BurialServicesController < ApplicationController
  before_action :set_burial_service, only: [:show, :edit, :update, :destroy]

  # GET /burial_services
  # GET /burial_services.json
  def index
    @burial_services = BurialService.all
  end

  # GET /burial_services/1
  # GET /burial_services/1.json
  def show
  end

  # GET /burial_services/new
  def new
    @burial_service = BurialService.new
  end

  # GET /burial_services/1/edit
  def edit
  end

  # POST /burial_services
  # POST /burial_services.json
  def create
    @burial_service = BurialService.new(burial_service_params)

    respond_to do |format|
      if @burial_service.save
        format.html { redirect_to @burial_service, notice: 'Burial service was successfully created.' }
        format.json { render :show, status: :created, location: @burial_service }
      else
        format.html { render :new }
        format.json { render json: @burial_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /burial_services/1
  # PATCH/PUT /burial_services/1.json
  def update
    respond_to do |format|
      if @burial_service.update(burial_service_params)
        format.html { redirect_to @burial_service, notice: 'Burial service was successfully updated.' }
        format.json { render :show, status: :ok, location: @burial_service }
      else
        format.html { render :edit }
        format.json { render json: @burial_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /burial_services/1
  # DELETE /burial_services/1.json
  def destroy
    @burial_service.destroy
    respond_to do |format|
      format.html { redirect_to burial_services_url, notice: 'Burial service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_burial_service
      @burial_service = BurialService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def burial_service_params
      params.require(:burial_service).permit(:capilla, :sala_de_velatorio, :liturgia, :toldo, :silla, :amplificacion, :diacono, :coro, :cafeteria)
    end
end
