class ChangeTypeCapillaSepultacion < ActiveRecord::Migration[5.0]
  def up
    change_table :burial_services do |t|
      t.change :capilla, :boolean
    end
  end

  def down
    change_table :burial_services do |t|
      t.change :capilla, :string
    end
  end
end
