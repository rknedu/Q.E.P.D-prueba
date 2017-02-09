class ChangeTypeVelatorio < ActiveRecord::Migration[5.0]
  def up
    change_table :servicio_de_cinerarios do |t|
      t.change :sala_de_velatorio, :boolean
    end
  end

  def down
    change_table :servicio_de_cinerarios do |t|
      t.change :sala_de_velatorio, :string
    end
  end
end
