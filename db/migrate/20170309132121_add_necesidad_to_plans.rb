class AddNecesidadToPlans < ActiveRecord::Migration[5.0]
  def change
  	add_column :plans, :necesidad, :boolean
  end
end
