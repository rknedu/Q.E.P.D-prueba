class ChangeTypeIncluyeGrabado < ActiveRecord::Migration[5.0]
   def up
    change_table :constructions do |t|
      t.change :incluye_grabado, :boolean
    end
  end

  def down
    change_table :constructions do |t|
      t.change :incluye_grabado, :string
    end
  end
end
