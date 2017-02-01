class CreateTypePublications < ActiveRecord::Migration[5.0]
  def change
    create_table :type_publications do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
