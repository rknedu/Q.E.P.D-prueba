class AddConditionIdToPlans < ActiveRecord::Migration[5.0]
  def change
    add_column :plans, :condition_id, :integer
  end
end
