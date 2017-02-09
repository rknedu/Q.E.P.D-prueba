class ChangeTypePodium < ActiveRecord::Migration[5.0]
  def up
    change_table :servicio_de_cinerarios do |t|
      t.change :podium, :boolean
    end
  end

  def down
    change_table :servicio_de_cinerarios do |t|
      t.change :podium, :string
    end
  end
end
