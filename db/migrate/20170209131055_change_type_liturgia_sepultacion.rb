class ChangeTypeLiturgiaSepultacion < ActiveRecord::Migration[5.0]
  def up
    change_table :burial_services do |t|
      t.change :liturgia, :boolean
    end
  end

  def down
    change_table :burial_services do |t|
      t.change :liturgia, :string
    end
  end
end
