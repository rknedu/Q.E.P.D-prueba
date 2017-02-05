class CreateConstructions < ActiveRecord::Migration[5.0]
  def change
    create_table :constructions do |t|
      t.string :tipo
      t.string :material
      t.string :terminacion
      t.string :incluye_grabado

      t.timestamps
    end
  end
end
