class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :text
      t.string :lat
      t.string :lon
      t.integer :votes
      t.string :user

      t.timestamps null: false
    end
  end
end
