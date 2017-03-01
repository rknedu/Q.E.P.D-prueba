class ChangeTypeTituloDeDominio < ActiveRecord::Migration[5.0]
  def up
    change_table :conditions do |t|
      t.change :titulo_de_dominio, :boolean
    end
  end

  def down
    change_table :conditions do |t|
      t.change :titulo_de_dominio, :string
    end
  end
end
