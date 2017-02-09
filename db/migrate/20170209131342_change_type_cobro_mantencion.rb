class ChangeTypeCobroMantencion < ActiveRecord::Migration[5.0]
  def up
    change_table :supports do |t|
      t.change :cobro_mantencion, :boolean
    end
  end

  def down
    change_table :supports do |t|
      t.change :cobro_mantencion, :string
    end
  end
end
