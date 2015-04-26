class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :votes

      t.timestamps null: false
    end
  end
end
