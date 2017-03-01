class ChangeColumnsTableEmpresas < ActiveRecord::Migration[5.0]
  def change
  	remove_column :empresas,:user_id, :integer
  	remove_column :empresas,:ubicacion, :string
  	add_column :empresas, :rut, :string
  	add_column :empresas, :usuario_id, :integer
  	add_index :empresas, :usuario_id
  	add_index :empresas, :tipo_empresa_id
  end
end
