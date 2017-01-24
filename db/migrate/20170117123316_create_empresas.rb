class CreateEmpresas < ActiveRecord::Migration[5.0]
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :ubicacion
      t.string :email

      t.timestamps
    end
  end
end
