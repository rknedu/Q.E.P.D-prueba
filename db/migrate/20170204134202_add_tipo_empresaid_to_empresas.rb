class AddTipoEmpresaidToEmpresas < ActiveRecord::Migration[5.0]
  def change
    add_column :empresas, :tipo_empresa_id, :integer
  end
end
