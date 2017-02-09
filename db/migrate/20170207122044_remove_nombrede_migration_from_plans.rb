class RemoveNombredeMigrationFromPlans < ActiveRecord::Migration[5.0]
  def change
    remove_column :plans, :publication_id, :integer
  end
end
