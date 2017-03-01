class AddFormasDePagoToConditions < ActiveRecord::Migration[5.0]
  def change
    add_column :conditions, :formas_de_pago, :string
  end
end
