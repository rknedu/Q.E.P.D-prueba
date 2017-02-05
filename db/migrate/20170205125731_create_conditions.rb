class CreateConditions < ActiveRecord::Migration[5.0]
  def change
    create_table :conditions do |t|
      t.references :formas_de_pago, foreign_key: true
      t.string :pago_a_plazo
      t.string :compra_anticipada
      t.string :titulo_de_dominio
      t.string :acepta_seguro_deceso
      t.string :seguro_de_degravamen
      t.string :seguro_cesantia
      t.string :convenio
      t.string :descuento_servicio_sepultacion
      t.string :pensiones
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
