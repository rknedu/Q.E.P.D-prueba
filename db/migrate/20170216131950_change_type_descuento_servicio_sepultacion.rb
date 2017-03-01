class ChangeTypeDescuentoServicioSepultacion < ActiveRecord::Migration[5.0]
  def up
    change_table :conditions do |t|
      t.change :descuento_servicio_sepultacion, :boolean
    end
  end

  def down
    change_table :conditions do |t|
      t.change :descuento_servicio_sepultacion, :string
    end
  end
end
