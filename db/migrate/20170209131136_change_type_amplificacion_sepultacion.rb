class ChangeTypeAmplificacionSepultacion < ActiveRecord::Migration[5.0]
  def up
    change_table :burial_services do |t|
      t.change :amplificacion, :boolean
    end
  end

  def down
    change_table :burial_services do |t|
      t.change :amplificacion, :string
    end
  end
end
