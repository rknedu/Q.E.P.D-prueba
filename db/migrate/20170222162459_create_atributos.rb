class CreateAtributos < ActiveRecord::Migration[5.0]
  def change
    create_table :atributos do |t|
      t.string :nombre
      t.references :tipo_atributo, foreign_key: true

      t.timestamps
    end
  end
end
