class AddPicPaperclip < ActiveRecord::Migration
  def self.up
    add_column :posts, :pic_file_name,    :string
    add_column :posts, :pic_content_type, :string
    add_column :posts, :pic_file_size,    :integer
    add_column :posts, :pic_updated_at,   :datetime
  end

  def self.down
    remove_column :posts, :pic_file_name,    :string
    remove_column :posts, :pic_content_type, :string
    remove_column :posts, :pic_file_size,    :integer
    remove_column :posts, :pic_updated_at,   :datetime
  end
end
