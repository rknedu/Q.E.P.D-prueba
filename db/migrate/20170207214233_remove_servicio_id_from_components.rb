class RemoveServicioIdFromComponents < ActiveRecord::Migration[5.0]
  def change
  	remove_column :components, :servicio_id, :integer
  end
end
