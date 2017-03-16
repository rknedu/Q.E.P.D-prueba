class AddTipoEmpresaIdToContactos < ActiveRecord::Migration[5.0]
  def change
  	add_column :contactos, :tipo_empresa_id, :integer
  end
end
