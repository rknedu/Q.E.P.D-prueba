class CreateServicios < ActiveRecord::Migration[5.0]
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.references :componente, foreign_key: true

      t.timestamps
    end
  end
end
