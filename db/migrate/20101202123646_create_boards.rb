class CreateBoards < ActiveRecord::Migration
  def self.up
    create_table :boards do |t|
      t.string :name
      t.datetime :created_at

      t.timestamps
    end
  end

  def self.down
    drop_table :boards
  end
end
