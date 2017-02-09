class ChangeTypeCeremoniaEntreCenizas < ActiveRecord::Migration[5.0]
  def up
    change_table :servicio_de_cinerarios do |t|
      t.change :ceremonia_entre_cenizas, :boolean
    end
  end

  def down
    change_table :servicio_de_cinerarios do |t|
      t.change :ceremonia_entre_cenizas, :string
    end
  end
end
