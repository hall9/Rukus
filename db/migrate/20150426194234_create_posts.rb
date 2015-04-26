class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.text :lat
      t.text :long
      t.integer :votes
      t.text :user

      t.timestamps null: false
    end
  end
end
