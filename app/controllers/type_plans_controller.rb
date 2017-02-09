class TypePlansController < ApplicationController
  before_action :set_type_plan, only: [:show, :edit, :update, :destroy]

  # GET /type_plans
  # GET /type_plans.json
  def index
    @type_plans = TypePlan.all
  end

  # GET /type_plans/1
  # GET /type_plans/1.json
  def show
  end

  # GET /type_plans/new
  def new
    @type_plan = TypePlan.new
  end

  # GET /type_plans/1/edit
  def edit
  end

  # POST /type_plans
  # POST /type_plans.json
  def create
    @type_plan = TypePlan.new(type_plan_params)

    respond_to do |format|
      if @type_plan.save
        format.html { redirect_to @type_plan, notice: 'Type plan was successfully created.' }
        format.json { render :show, status: :created, location: @type_plan }
      else
        format.html { render :new }
        format.json { render json: @type_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_plans/1
  # PATCH/PUT /type_plans/1.json
  def update
    respond_to do |format|
      if @type_plan.update(type_plan_params)
        format.html { redirect_to @type_plan, notice: 'Type plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_plan }
      else
        format.html { render :edit }
        format.json { render json: @type_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_plans/1
  # DELETE /type_plans/1.json
  def destroy
    @type_plan.destroy
    respond_to do |format|
      format.html { redirect_to type_plans_url, notice: 'Type plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_plan
      @type_plan = TypePlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_plan_params
      params.require(:type_plan).permit(:nombre, :plans)
    end
end
