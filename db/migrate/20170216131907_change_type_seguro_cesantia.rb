class ChangeTypeSeguroCesantia < ActiveRecord::Migration[5.0]
  def up
    change_table :conditions do |t|
      t.change :seguro_cesantia, :boolean
    end
  end

  def down
    change_table :conditions do |t|
      t.change :seguro_cesantia, :string
    end
  end
end
