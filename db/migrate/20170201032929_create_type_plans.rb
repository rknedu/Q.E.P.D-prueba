class CreateTypePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :type_plans do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
