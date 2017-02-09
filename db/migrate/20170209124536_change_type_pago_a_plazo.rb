class ChangeTypePagoAPlazo < ActiveRecord::Migration[5.0]
 def up
    change_table :conditions do |t|
      t.change :pago_a_plazo, :boolean
    end
  end

  def down
    change_table :conditions do |t|
      t.change :pago_a_plazo, :string
    end
  end
end
