class CreateComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :components do |t|
      t.references :urna, foreign_key: true
      t.references :velatorio, foreign_key: true
      t.references :traslado, foreign_key: true
      t.references :servicio_de_cinerario, foreign_key: true
      t.references :anfora, foreign_key: true
      t.references :burial_service, foreign_key: true
      t.references :espacio, foreign_key: true
      t.references :construction, foreign_key: true
      t.references :location, foreign_key: true
      t.references :support, foreign_key: true
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
