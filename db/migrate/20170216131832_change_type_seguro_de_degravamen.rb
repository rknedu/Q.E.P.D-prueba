class ChangeTypeSeguroDeDegravamen < ActiveRecord::Migration[5.0]
  def up
    change_table :conditions do |t|
      t.change :seguro_de_degravamen, :boolean
    end
  end

  def down
    change_table :conditions do |t|
      t.change :seguro_de_degravamen, :string
    end
  end
end
