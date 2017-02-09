class ChangeTypeAmplificacion < ActiveRecord::Migration[5.0]
  def up
    change_table :servicio_de_cinerarios do |t|
      t.change :amplificacion, :boolean
    end
  end

  def down
    change_table :servicio_de_cinerarios do |t|
      t.change :amplificacion, :string
    end
  end
end
