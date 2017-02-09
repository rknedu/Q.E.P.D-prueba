class SalaDeVelatorioSepultacion < ActiveRecord::Migration[5.0]
  def up
    change_table :burial_services do |t|
      t.change :sala_de_velatorio, :boolean
    end
  end

  def down
    change_table :burial_services do |t|
      t.change :sala_de_velatorio, :string
    end
  end
end
