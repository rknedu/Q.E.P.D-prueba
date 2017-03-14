class CreateContactos < ActiveRecord::Migration[5.0]
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :direccion
      t.integer :fono
      t.string :email
      t.string :nombre_de_contacto

      t.timestamps
    end
  end
end
