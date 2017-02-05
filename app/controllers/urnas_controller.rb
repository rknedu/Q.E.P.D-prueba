class UrnasController < ApplicationController
  before_action :set_urna, only: [:show, :edit, :update, :destroy]

  # GET /urnas
  # GET /urnas.json
  def index
    @urnas = Urna.all
  end

  # GET /urnas/1
  # GET /urnas/1.json
  def show
  end

  # GET /urnas/new
  def new
    @urna = Urna.new
  end

  # GET /urnas/1/edit
  def edit
  end

  # POST /urnas
  # POST /urnas.json
  def create
    @urna = Urna.new(urna_params)

    respond_to do |format|
      if @urna.save
        format.html { redirect_to @urna, notice: 'Urna was successfully created.' }
        format.json { render :show, status: :created, location: @urna }
      else
        format.html { render :new }
        format.json { render json: @urna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /urnas/1
  # PATCH/PUT /urnas/1.json
  def update
    respond_to do |format|
      if @urna.update(urna_params)
        format.html { redirect_to @urna, notice: 'Urna was successfully updated.' }
        format.json { render :show, status: :ok, location: @urna }
      else
        format.html { render :edit }
        format.json { render json: @urna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /urnas/1
  # DELETE /urnas/1.json
  def destroy
    @urna.destroy
    respond_to do |format|
      format.html { redirect_to urnas_url, notice: 'Urna was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urna
      @urna = Urna.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def urna_params
      params.require(:urna).permit(:modelo, :medida, :material, :terminacion, :color)
    end
end
