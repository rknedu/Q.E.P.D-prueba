class CreatePlanCondition < ActiveRecord::Migration[5.0]
  def change
    create_table :plan_conditions do |t|
      t.integer :plan_id
      t.integer :condition_id
    end
  end
end
