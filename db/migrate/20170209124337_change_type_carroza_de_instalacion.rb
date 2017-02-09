class ChangeTypeCarrozaDeInstalacion < ActiveRecord::Migration[5.0]
 def up
    change_table :traslados do |t|
      t.change :carroza_de_instalacion, :boolean
    end
  end

  def down
    change_table :traslados do |t|
      t.change :carroza_de_instalacion, :string
    end
  end
end
