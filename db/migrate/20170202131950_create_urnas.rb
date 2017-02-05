class CreateUrnas < ActiveRecord::Migration[5.0]
  def change
    create_table :urnas do |t|
      t.string :modelo
      t.string :medida
      t.string :material
      t.string :terminacion
      t.string :color

      t.timestamps
    end
  end
end
