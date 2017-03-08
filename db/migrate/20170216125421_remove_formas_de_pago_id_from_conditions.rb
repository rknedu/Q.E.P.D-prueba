class RemoveFormasDePagoIdFromConditions < ActiveRecord::Migration[5.0]
  def change
  	remove_column :conditions, :formas_de_pago_id, :integer
  end
end
