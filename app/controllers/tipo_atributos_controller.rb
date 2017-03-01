class TipoAtributosController < ApplicationController
  before_action :set_tipo_atributo, only: [:show, :edit, :update, :destroy]

  # GET /tipo_atributos
  # GET /tipo_atributos.json
  def index
    @tipo_atributos = TipoAtributo.all
  end

  # GET /tipo_atributos/1
  # GET /tipo_atributos/1.json
  def show
  end

  # GET /tipo_atributos/new
  def new
    @tipo_atributo = TipoAtributo.new
  end

  # GET /tipo_atributos/1/edit
  def edit
  end

  # POST /tipo_atributos
  # POST /tipo_atributos.json
  def create
    @tipo_atributo = TipoAtributo.new(tipo_atributo_params)

    respond_to do |format|
      if @tipo_atributo.save
        format.html { redirect_to @tipo_atributo, notice: 'Tipo atributo was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_atributo }
      else
        format.html { render :new }
        format.json { render json: @tipo_atributo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_atributos/1
  # PATCH/PUT /tipo_atributos/1.json
  def update
    respond_to do |format|
      if @tipo_atributo.update(tipo_atributo_params)
        format.html { redirect_to @tipo_atributo, notice: 'Tipo atributo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_atributo }
      else
        format.html { render :edit }
        format.json { render json: @tipo_atributo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_atributos/1
  # DELETE /tipo_atributos/1.json
  def destroy
    @tipo_atributo.destroy
    respond_to do |format|
      format.html { redirect_to tipo_atributos_url, notice: 'Tipo atributo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_atributo
      @tipo_atributo = TipoAtributo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_atributo_params
      params.require(:tipo_atributo).permit(:nombre)
    end
end
