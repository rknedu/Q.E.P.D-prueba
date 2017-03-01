class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :titulo
      t.string :nombre
      t.references :componente, foreign_key: true
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
