class DropTypePublications < ActiveRecord::Migration[5.0]
  def change
    drop_table :type_publications
  end

end
