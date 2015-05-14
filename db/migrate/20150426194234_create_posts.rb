class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.text :lat
      t.text :long
      t.integer :votes
      t.belongs_to :User
      t.timestamps null: false
    end
  end
end
