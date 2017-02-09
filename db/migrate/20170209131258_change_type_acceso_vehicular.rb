class ChangeTypeAccesoVehicular < ActiveRecord::Migration[5.0]
  def up
    change_table :locations do |t|
      t.change :acceso_vehicular, :boolean
    end
  end

  def down
    change_table :locations do |t|
      t.change :acceso_vehicular, :string
    end
  end
end
