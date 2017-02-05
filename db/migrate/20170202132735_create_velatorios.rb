class CreateVelatorios < ActiveRecord::Migration[5.0]
  def change
    create_table :velatorios do |t|
      t.string :tramites_defuncion
      t.string :asesor_a_domicilio
      t.string :sala_de_velatorio
      t.integer :cirios
      t.integer :portacirios
      t.integer :cruz
      t.integer :flores_en_canasto
      t.string :flores_cubre_urna
      t.string :integer
      t.integer :libro_de_condolencias
      t.string :parroco
      t.integer :coro
      t.integer :aviso_prensa
      t.integer :tarjeta_agradecimiento
      t.string :cafeteria

      t.timestamps
    end
  end
end
