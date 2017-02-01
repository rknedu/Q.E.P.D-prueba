class CreateDirections < ActiveRecord::Migration[5.0]
  def change
    create_table :directions do |t|
      t.string :calle
      t.integer :numero
      t.string :sector
      t.references :empresa, foreign_key: true
      t.references :comuna, foreign_key: true

      t.timestamps
    end
  end
end
