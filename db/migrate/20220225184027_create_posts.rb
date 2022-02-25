class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :authorId
      t.string :title
      t.text :text
      t.integer :comments_count
      t.integer :likeCount

      t.timestamps
    end
  end
end
