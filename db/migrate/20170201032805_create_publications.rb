class CreatePublications < ActiveRecord::Migration[5.0]
  def change
    create_table :publications do |t|
      t.date :fecha
      t.string :estado
      t.references :usuario, foreign_key: true
      t.references :type_publication, foreign_key: true

      t.timestamps
    end
  end
end
