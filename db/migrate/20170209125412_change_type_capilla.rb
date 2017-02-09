class ChangeTypeCapilla < ActiveRecord::Migration[5.0]
 def up
    change_table :servicio_de_cinerarios do |t|
      t.change :capilla, :boolean
    end
  end

  def down
    change_table :servicio_de_cinerarios do |t|
      t.change :capilla, :string
    end
  end
end
