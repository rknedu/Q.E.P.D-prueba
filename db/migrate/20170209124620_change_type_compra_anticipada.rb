class ChangeTypeCompraAnticipada < ActiveRecord::Migration[5.0]
  def up
    change_table :conditions do |t|
      t.change :compra_anticipada, :boolean
    end
  end

  def down
    change_table :conditions do |t|
      t.change :compra_anticipada, :string
    end
  end
end
