class CreateCaracteristicas < ActiveRecord::Migration[5.0]
  def change
    create_table :caracteristicas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
