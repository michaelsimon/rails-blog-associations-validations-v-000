class CreatePostsAgain < ActiveRecord::Migration
 def change
    drop_table :posts

    create_table :posts do |t|
      t.string :name
      t.text :content
      t.references :user

      t.timestamps null: false
    end
  end
end
