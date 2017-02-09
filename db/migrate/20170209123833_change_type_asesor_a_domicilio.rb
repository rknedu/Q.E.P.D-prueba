class ChangeTypeAsesorADomicilio < ActiveRecord::Migration[5.0]
 def up
    change_table :velatorios do |t|
      t.change :asesor_a_domicilio, :boolean
    end
  end

  def down
    change_table :velatorios do |t|
      t.change :asesor_a_domicilio, :string
    end
  end
end
