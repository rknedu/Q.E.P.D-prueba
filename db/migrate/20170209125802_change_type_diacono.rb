class ChangeTypeDiacono < ActiveRecord::Migration[5.0]
  def up
    change_table :servicio_de_cinerarios do |t|
      t.change :diacono, :boolean
    end
  end

  def down
    change_table :servicio_de_cinerarios do |t|
      t.change :diacono, :string
    end
  end
end
