class CreateTipoEmpresas < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_empresas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
