class ChangeColumnTipoAtributo < ActiveRecord::Migration[5.0]
  def change
  	remove_column :atributos,:tipo_atributo_id, :integer
  	add_column :atributos, :valor, :string
  end
end
