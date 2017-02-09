class ChangeTypeCarrozaParaFlores < ActiveRecord::Migration[5.0]
  def up
    change_table :traslados do |t|
      t.change :carroza_para_flores, :boolean
    end
  end

  def down
    change_table :traslados do |t|
      t.change :carroza_para_flores, :string
    end
  end
end
