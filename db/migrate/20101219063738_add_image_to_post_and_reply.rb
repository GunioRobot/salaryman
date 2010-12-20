class AddImageToPostAndReply < ActiveRecord::Migration
  def self.up
    add_column :posts, :image_file_name, :string
    add_column :posts, :image_content_type, :string
    add_column :posts, :image_file_size, :integer

    add_column :replies, :image_file_name, :string
    add_column :replies, :image_content_type, :string
    add_column :replies, :image_file_size, :integer
  end

  def self.down
    remove_column :posts, :image_file_size
    remove_column :posts, :image_content_type
    remove_column :posts, :image_file_name

    remove_column :replies, :image_file_size
    remove_column :replies, :image_content_type
    remove_column :replies, :image_file_name
  end

end
