class AddServicioIdToComponents < ActiveRecord::Migration[5.0]
  def change
    add_column :components, :servicio_id, :integer
  end
end
