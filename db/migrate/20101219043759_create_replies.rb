class CreateReplies < ActiveRecord::Migration
  def self.up
    create_table :replies do |t|
      t.string :subject
      t.text :body
      t.string :email
      t.string :password
      t.integer :post_id

      t.timestamps
    end
  end

  def self.down
    drop_table :replies
  end
end
