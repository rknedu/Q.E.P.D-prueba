class ServicioDeCinerariosController < ApplicationController
  before_action :set_servicio_de_cinerario, only: [:show, :edit, :update, :destroy]

  # GET /servicio_de_cinerarios
  # GET /servicio_de_cinerarios.json
  def index
    @servicio_de_cinerarios = ServicioDeCinerario.all
  end

  # GET /servicio_de_cinerarios/1
  # GET /servicio_de_cinerarios/1.json
  def show
  end

  # GET /servicio_de_cinerarios/new
  def new
    @servicio_de_cinerario = ServicioDeCinerario.new
  end

  # GET /servicio_de_cinerarios/1/edit
  def edit
  end

  # POST /servicio_de_cinerarios
  # POST /servicio_de_cinerarios.json
  def create
    @servicio_de_cinerario = ServicioDeCinerario.new(servicio_de_cinerario_params)

    respond_to do |format|
      if @servicio_de_cinerario.save
        format.html { redirect_to @servicio_de_cinerario, notice: 'Servicio de cinerario was successfully created.' }
        format.json { render :show, status: :created, location: @servicio_de_cinerario }
      else
        format.html { render :new }
        format.json { render json: @servicio_de_cinerario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servicio_de_cinerarios/1
  # PATCH/PUT /servicio_de_cinerarios/1.json
  def update
    respond_to do |format|
      if @servicio_de_cinerario.update(servicio_de_cinerario_params)
        format.html { redirect_to @servicio_de_cinerario, notice: 'Servicio de cinerario was successfully updated.' }
        format.json { render :show, status: :ok, location: @servicio_de_cinerario }
      else
        format.html { render :edit }
        format.json { render json: @servicio_de_cinerario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicio_de_cinerarios/1
  # DELETE /servicio_de_cinerarios/1.json
  def destroy
    @servicio_de_cinerario.destroy
    respond_to do |format|
      format.html { redirect_to servicio_de_cinerarios_url, notice: 'Servicio de cinerario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicio_de_cinerario
      @servicio_de_cinerario = ServicioDeCinerario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servicio_de_cinerario_params
      params.require(:servicio_de_cinerario).permit(:capilla, :sala_de_velatorio, :podium, :liturgia, :amplificacion, :diacono, :coro, :cafeteria, :ceremonia_entre_cenizas, :anfora_incluida)
    end
end
