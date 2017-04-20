class AddColumn < ActiveRecord::Migration[5.0]
  def up
    add_column "students" , "collaboration_id", :integer
    add_index "students" , "collaboration_id"
  end

  def down
    remove_index "students" , "collaboration_id"
    remove_column "students" , "collaboration_id", :integer
  end
end
