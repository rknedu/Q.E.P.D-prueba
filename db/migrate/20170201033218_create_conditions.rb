class CreateConditions < ActiveRecord::Migration[5.0]
  def change
    create_table :conditions do |t|
      t.string :nombre
      t.string :descripcion
      t.string :solucion

      t.timestamps
    end
  end
end
