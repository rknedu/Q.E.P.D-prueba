class AddEmpresaidToPlans < ActiveRecord::Migration[5.0]
  def change
    add_column :plans, :empresa_id, :integer
  end
end
