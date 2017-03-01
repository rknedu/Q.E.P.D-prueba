class CreateComponentes < ActiveRecord::Migration[5.0]
  def change
    create_table :componentes do |t|
      t.string :nombre
      t.references :servicio, foreign_key: true

      t.timestamps
    end
  end
end
