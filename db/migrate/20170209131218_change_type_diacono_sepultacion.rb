class ChangeTypeDiaconoSepultacion < ActiveRecord::Migration[5.0]
  def up
    change_table :burial_services do |t|
      t.change :diacono, :boolean
    end
  end

  def down
    change_table :burial_services do |t|
      t.change :diacono, :string
    end
  end
end
