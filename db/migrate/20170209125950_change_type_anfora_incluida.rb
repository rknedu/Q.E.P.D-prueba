class ChangeTypeAnforaIncluida < ActiveRecord::Migration[5.0]
 def up
    change_table :servicio_de_cinerarios do |t|
      t.change :anfora_incluida, :boolean
    end
  end

  def down
    change_table :servicio_de_cinerarios do |t|
      t.change :anfora_incluida, :string
    end
  end
end
