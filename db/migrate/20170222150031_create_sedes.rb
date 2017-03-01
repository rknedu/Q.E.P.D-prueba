class CreateSedes < ActiveRecord::Migration[5.0]
  def change
    create_table :sedes do |t|
      t.string :nombre
      t.references :empresa, foreign_key: true
      t.string :calle
      t.integer :numero
      t.string :sector
      t.string :ubicacion
      t.references :comuna, foreign_key: true

      t.timestamps
    end
  end
end
