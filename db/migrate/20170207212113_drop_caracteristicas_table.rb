class DropCaracteristicasTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :caracteristicas
  end
end
