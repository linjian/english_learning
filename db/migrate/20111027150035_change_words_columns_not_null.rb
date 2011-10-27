class ChangeWordsColumnsNotNull < ActiveRecord::Migration
  def self.up
    change_column_null :words, :article_id,     false
    change_column_null :words, :user_id,        false
    change_column_null :words, :starting_index, false
    change_column_null :words, :char_count,     false
    change_column_null :words, :origin_name,    false
  end

  def self.down
    change_column_null :words, :article_id,     true
    change_column_null :words, :user_id,        true
    change_column_null :words, :starting_index, true
    change_column_null :words, :char_count,     true
    change_column_null :words, :origin_name,    true
  end
end
