class ChangeColumnsTableServicios < ActiveRecord::Migration[5.0]
  def change
  	remove_column :servicios,:componente_id, :integer
  	add_column :servicios, :tipo_empresa_id, :integer
  	add_index :servicios, :tipo_empresa_id
  end
end
