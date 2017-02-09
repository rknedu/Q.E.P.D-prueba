class ChangeTypeAceptaSeguroDeceso < ActiveRecord::Migration[5.0]
  def up
    change_table :conditions do |t|
      t.change :acepta_seguro_deceso, :boolean
    end
  end

  def down
    change_table :conditions do |t|
      t.change :acepta_seguro_deceso, :string
    end
  end
end
