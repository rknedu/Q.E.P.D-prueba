class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :lugar
      t.string :acceso_vehicular
      t.string :nombre_sector

      t.timestamps
    end
  end
end
