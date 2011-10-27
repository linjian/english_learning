class CreateWords < ActiveRecord::Migration
  def self.up
    create_table :words do |t|
      t.integer :article_id
      t.integer :user_id
      t.integer :starting_index
      t.integer :char_count
      t.string  :origin_name

      t.timestamps
    end
  end

  def self.down
    drop_table :words
  end
end
