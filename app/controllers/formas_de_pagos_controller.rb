class FormasDePagosController < ApplicationController
  before_action :set_formas_de_pago, only: [:show, :edit, :update, :destroy]

  # GET /formas_de_pagos
  # GET /formas_de_pagos.json
  def index
    @formas_de_pagos = FormasDePago.all
  end

  # GET /formas_de_pagos/1
  # GET /formas_de_pagos/1.json
  def show
  end

  # GET /formas_de_pagos/new
  def new
    @formas_de_pago = FormasDePago.new
  end

  # GET /formas_de_pagos/1/edit
  def edit
  end

  # POST /formas_de_pagos
  # POST /formas_de_pagos.json
  def create
    @formas_de_pago = FormasDePago.new(formas_de_pago_params)

    respond_to do |format|
      if @formas_de_pago.save
        format.html { redirect_to @formas_de_pago, notice: 'Formas de pago was successfully created.' }
        format.json { render :show, status: :created, location: @formas_de_pago }
      else
        format.html { render :new }
        format.json { render json: @formas_de_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formas_de_pagos/1
  # PATCH/PUT /formas_de_pagos/1.json
  def update
    respond_to do |format|
      if @formas_de_pago.update(formas_de_pago_params)
        format.html { redirect_to @formas_de_pago, notice: 'Formas de pago was successfully updated.' }
        format.json { render :show, status: :ok, location: @formas_de_pago }
      else
        format.html { render :edit }
        format.json { render json: @formas_de_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formas_de_pagos/1
  # DELETE /formas_de_pagos/1.json
  def destroy
    @formas_de_pago.destroy
    respond_to do |format|
      format.html { redirect_to formas_de_pagos_url, notice: 'Formas de pago was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formas_de_pago
      @formas_de_pago = FormasDePago.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formas_de_pago_params
      params.require(:formas_de_pago).permit(:nombre)
    end
end
