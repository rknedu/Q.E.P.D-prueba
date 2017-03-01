class AtributosComponentesController < ApplicationController
  before_action :set_atributos_componente, only: [:show, :edit, :update, :destroy]

  # GET /atributos_componentes
  # GET /atributos_componentes.json
  def index
    @atributos_componentes = AtributosComponente.all
  end

  # GET /atributos_componentes/1
  # GET /atributos_componentes/1.json
  def show
  end

  # GET /atributos_componentes/new
  def new
    @atributos_componente = AtributosComponente.new
  end

  # GET /atributos_componentes/1/edit
  def edit
  end

  # POST /atributos_componentes
  # POST /atributos_componentes.json
  def create
    @atributos_componente = AtributosComponente.new(atributos_componente_params)

    respond_to do |format|
      if @atributos_componente.save
        format.html { redirect_to @atributos_componente, notice: 'Atributos componente was successfully created.' }
        format.json { render :show, status: :created, location: @atributos_componente }
      else
        format.html { render :new }
        format.json { render json: @atributos_componente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atributos_componentes/1
  # PATCH/PUT /atributos_componentes/1.json
  def update
    respond_to do |format|
      if @atributos_componente.update(atributos_componente_params)
        format.html { redirect_to @atributos_componente, notice: 'Atributos componente was successfully updated.' }
        format.json { render :show, status: :ok, location: @atributos_componente }
      else
        format.html { render :edit }
        format.json { render json: @atributos_componente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atributos_componentes/1
  # DELETE /atributos_componentes/1.json
  def destroy
    @atributos_componente.destroy
    respond_to do |format|
      format.html { redirect_to atributos_componentes_url, notice: 'Atributos componente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atributos_componente
      @atributos_componente = AtributosComponente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atributos_componente_params
      params.require(:atributos_componente).permit(:componente_id, :atributo_id)
    end
end
