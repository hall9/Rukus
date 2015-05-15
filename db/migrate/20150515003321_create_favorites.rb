class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.belongs_to :Post
      t.belongs_to :User
      t.timestamps null: false
    end
  end
end
