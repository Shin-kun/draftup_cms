class DestroyPosts < ActiveRecord::Migration[5.0]
  def up
    drop_table :posts
  end

  def down
    create_table :posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
