class ChangeTypePensiones < ActiveRecord::Migration[5.0]
  def up
    change_table :conditions do |t|
      t.change :pensiones, :boolean
    end
  end

  def down
    change_table :conditions do |t|
      t.change :pensiones, :string
    end
  end
end
