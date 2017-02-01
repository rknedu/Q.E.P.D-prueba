class CreateTelefonos < ActiveRecord::Migration[5.0]
  def change
    create_table :telefonos do |t|
      t.integer :numero
      t.references :empresa, foreign_key: true

      t.timestamps
    end
  end
end
