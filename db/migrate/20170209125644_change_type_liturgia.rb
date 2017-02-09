class ChangeTypeLiturgia < ActiveRecord::Migration[5.0]
  def up
    change_table :servicio_de_cinerarios do |t|
      t.change :liturgia, :boolean
    end
  end

  def down
    change_table :servicio_de_cinerarios do |t|
      t.change :liturgia, :string
    end
  end
end
