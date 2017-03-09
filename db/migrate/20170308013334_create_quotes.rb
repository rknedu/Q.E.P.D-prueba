class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.string :nombre
      t.string :apellidos
      t.string :rut
      t.string :email
      t.integer :telefonouno
      t.integer :telefonodos
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
