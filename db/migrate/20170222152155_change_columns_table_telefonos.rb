class ChangeColumnsTableTelefonos < ActiveRecord::Migration[5.0]
  def change
  	remove_column :telefonos,:empresa_id, :integer
  	add_column :telefonos, :sede_id, :integer
  	add_index :telefonos, :sede_id
  end
end
