class CreateTipoAtributos < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_atributos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
