class ComponentesPlansController < ApplicationController
  before_action :set_componentes_plan, only: [:show, :edit, :update, :destroy]

  # GET /componentes_plans
  # GET /componentes_plans.json
  def index
    @componentes_plans = ComponentesPlan.all
  end

  # GET /componentes_plans/1
  # GET /componentes_plans/1.json
  def show
  end

  # GET /componentes_plans/new
  def new
    @componentes_plan = ComponentesPlan.new
  end

  # GET /componentes_plans/1/edit
  def edit
  end

  # POST /componentes_plans
  # POST /componentes_plans.json
  def create
    @componentes_plan = ComponentesPlan.new(componentes_plan_params)

    respond_to do |format|
      if @componentes_plan.save
        format.html { redirect_to @componentes_plan, notice: 'Componentes plan was successfully created.' }
        format.json { render :show, status: :created, location: @componentes_plan }
      else
        format.html { render :new }
        format.json { render json: @componentes_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /componentes_plans/1
  # PATCH/PUT /componentes_plans/1.json
  def update
    respond_to do |format|
      if @componentes_plan.update(componentes_plan_params)
        format.html { redirect_to @componentes_plan, notice: 'Componentes plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @componentes_plan }
      else
        format.html { render :edit }
        format.json { render json: @componentes_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /componentes_plans/1
  # DELETE /componentes_plans/1.json
  def destroy
    @componentes_plan.destroy
    respond_to do |format|
      format.html { redirect_to componentes_plans_url, notice: 'Componentes plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_componentes_plan
      @componentes_plan = ComponentesPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def componentes_plan_params
      params.require(:componentes_plan).permit(:componente_id, :plan_id)
    end
end
