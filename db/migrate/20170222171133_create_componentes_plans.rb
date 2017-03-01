class CreateComponentesPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :componentes_plans do |t|
      t.references :componente, foreign_key: true
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
