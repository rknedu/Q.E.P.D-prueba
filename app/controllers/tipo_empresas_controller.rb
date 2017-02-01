class TipoEmpresasController < ApplicationController
  before_action :set_tipo_empresa, only: [:show, :edit, :update, :destroy]

  # GET /tipo_empresas
  # GET /tipo_empresas.json
  def index
    @tipo_empresas = TipoEmpresa.all
  end

  # GET /tipo_empresas/1
  # GET /tipo_empresas/1.json
  def show
  end

  # GET /tipo_empresas/new
  def new
    @tipo_empresa = TipoEmpresa.new
  end

  # GET /tipo_empresas/1/edit
  def edit
  end

  # POST /tipo_empresas
  # POST /tipo_empresas.json
  def create
    @tipo_empresa = TipoEmpresa.new(tipo_empresa_params)

    respond_to do |format|
      if @tipo_empresa.save
        format.html { redirect_to @tipo_empresa, notice: 'Tipo empresa was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_empresa }
      else
        format.html { render :new }
        format.json { render json: @tipo_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_empresas/1
  # PATCH/PUT /tipo_empresas/1.json
  def update
    respond_to do |format|
      if @tipo_empresa.update(tipo_empresa_params)
        format.html { redirect_to @tipo_empresa, notice: 'Tipo empresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_empresa }
      else
        format.html { render :edit }
        format.json { render json: @tipo_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_empresas/1
  # DELETE /tipo_empresas/1.json
  def destroy
    @tipo_empresa.destroy
    respond_to do |format|
      format.html { redirect_to tipo_empresas_url, notice: 'Tipo empresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_empresa
      @tipo_empresa = TipoEmpresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_empresa_params
      params.require(:tipo_empresa).permit(:nombre)
    end
end
