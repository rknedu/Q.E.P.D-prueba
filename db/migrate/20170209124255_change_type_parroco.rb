class ChangeTypeParroco < ActiveRecord::Migration[5.0]
 def up
    change_table :velatorios do |t|
      t.change :parroco, :boolean
    end
  end

  def down
    change_table :velatorios do |t|
      t.change :parroco, :string
    end
  end
end
