class CreateAtributosComponentes < ActiveRecord::Migration[5.0]
  def change
    create_table :atributos_componentes do |t|
      t.references :componente, foreign_key: true
      t.references :atributo, foreign_key: true

      t.timestamps
    end
  end
end
