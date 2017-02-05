class VelatoriosController < ApplicationController
  before_action :set_velatorio, only: [:show, :edit, :update, :destroy]

  # GET /velatorios
  # GET /velatorios.json
  def index
    @velatorios = Velatorio.all
  end

  # GET /velatorios/1
  # GET /velatorios/1.json
  def show
  end

  # GET /velatorios/new
  def new
    @velatorio = Velatorio.new
  end

  # GET /velatorios/1/edit
  def edit
  end

  # POST /velatorios
  # POST /velatorios.json
  def create
    @velatorio = Velatorio.new(velatorio_params)

    respond_to do |format|
      if @velatorio.save
        format.html { redirect_to @velatorio, notice: 'Velatorio was successfully created.' }
        format.json { render :show, status: :created, location: @velatorio }
      else
        format.html { render :new }
        format.json { render json: @velatorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /velatorios/1
  # PATCH/PUT /velatorios/1.json
  def update
    respond_to do |format|
      if @velatorio.update(velatorio_params)
        format.html { redirect_to @velatorio, notice: 'Velatorio was successfully updated.' }
        format.json { render :show, status: :ok, location: @velatorio }
      else
        format.html { render :edit }
        format.json { render json: @velatorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /velatorios/1
  # DELETE /velatorios/1.json
  def destroy
    @velatorio.destroy
    respond_to do |format|
      format.html { redirect_to velatorios_url, notice: 'Velatorio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_velatorio
      @velatorio = Velatorio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def velatorio_params
      params.require(:velatorio).permit(:tramites_defuncion, :asesor_a_domicilio, :sala_de_velatorio, :cirios, :portacirios, :cruz, :flores_en_canasto, :flores_cubre_urna, :integer, :libro_de_condolencias, :parroco, :coro, :aviso_prensa, :tarjeta_agradecimiento, :cafeteria)
    end
end
