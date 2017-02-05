class CreateTraslados < ActiveRecord::Migration[5.0]
  def change
    create_table :traslados do |t|
      t.string :carroza_de_instalacion
      t.string :carroza_funeral
      t.string :carroza_para_flores
      t.integer :vehiculo_acompanamiento
      t.integer :capacidad_pasajeros

      t.timestamps
    end
  end
end
