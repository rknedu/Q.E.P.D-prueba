class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.string :nombre
      t.integer :codigo
      t.integer :precio
      t.references :publication, foreign_key: true
      t.references :servicio, foreign_key: true
      t.references :type_plan, foreign_key: true
      t.references :tipo_cliente, foreign_key: true

      t.timestamps
    end
  end
end
