class AnforasController < ApplicationController
  before_action :set_anfora, only: [:show, :edit, :update, :destroy]

  # GET /anforas
  # GET /anforas.json
  def index
    @anforas = Anfora.all
  end

  # GET /anforas/1
  # GET /anforas/1.json
  def show
  end

  # GET /anforas/new
  def new
    @anfora = Anfora.new
  end

  # GET /anforas/1/edit
  def edit
  end

  # POST /anforas
  # POST /anforas.json
  def create
    @anfora = Anfora.new(anfora_params)

    respond_to do |format|
      if @anfora.save
        format.html { redirect_to @anfora, notice: 'Anfora was successfully created.' }
        format.json { render :show, status: :created, location: @anfora }
      else
        format.html { render :new }
        format.json { render json: @anfora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anforas/1
  # PATCH/PUT /anforas/1.json
  def update
    respond_to do |format|
      if @anfora.update(anfora_params)
        format.html { redirect_to @anfora, notice: 'Anfora was successfully updated.' }
        format.json { render :show, status: :ok, location: @anfora }
      else
        format.html { render :edit }
        format.json { render json: @anfora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anforas/1
  # DELETE /anforas/1.json
  def destroy
    @anfora.destroy
    respond_to do |format|
      format.html { redirect_to anforas_url, notice: 'Anfora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anfora
      @anfora = Anfora.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anfora_params
      params.require(:anfora).permit(:anfora_y_cobre, :anfora_cobre)
    end
end
