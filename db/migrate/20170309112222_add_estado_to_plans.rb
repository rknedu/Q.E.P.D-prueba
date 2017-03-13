class AddEstadoToPlans < ActiveRecord::Migration[5.0]
  def change
  	add_column :plans, :state, :string
  end
end
