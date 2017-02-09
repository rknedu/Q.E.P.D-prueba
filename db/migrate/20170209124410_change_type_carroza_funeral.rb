class ChangeTypeCarrozaFuneral < ActiveRecord::Migration[5.0]
 def up
    change_table :traslados do |t|
      t.change :carroza_funeral, :boolean
    end
  end

  def down
    change_table :traslados do |t|
      t.change :carroza_funeral, :string
    end
  end
end
