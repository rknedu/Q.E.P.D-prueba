class TypePublicationsController < ApplicationController
  before_action :set_type_publication, only: [:show, :edit, :update, :destroy]

  # GET /type_publications
  # GET /type_publications.json
  def index
    @type_publications = TypePublication.all
  end

  # GET /type_publications/1
  # GET /type_publications/1.json
  def show
  end

  # GET /type_publications/new
  def new
    @type_publication = TypePublication.new
  end

  # GET /type_publications/1/edit
  def edit
  end

  # POST /type_publications
  # POST /type_publications.json
  def create
    @type_publication = TypePublication.new(type_publication_params)

    respond_to do |format|
      if @type_publication.save
        format.html { redirect_to @type_publication, notice: 'Type publication was successfully created.' }
        format.json { render :show, status: :created, location: @type_publication }
      else
        format.html { render :new }
        format.json { render json: @type_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_publications/1
  # PATCH/PUT /type_publications/1.json
  def update
    respond_to do |format|
      if @type_publication.update(type_publication_params)
        format.html { redirect_to @type_publication, notice: 'Type publication was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_publication }
      else
        format.html { render :edit }
        format.json { render json: @type_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_publications/1
  # DELETE /type_publications/1.json
  def destroy
    @type_publication.destroy
    respond_to do |format|
      format.html { redirect_to type_publications_url, notice: 'Type publication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_publication
      @type_publication = TypePublication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_publication_params
      params.require(:type_publication).permit(:nombre)
    end
end
