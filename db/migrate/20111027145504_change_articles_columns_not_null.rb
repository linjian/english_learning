class ChangeArticlesColumnsNotNull < ActiveRecord::Migration
  def self.up
    change_column_null :articles, :title,   false
    change_column_null :articles, :content, false
    change_column_null :articles, :user_id, false
  end

  def self.down
    change_column_null :articles, :title,   true
    change_column_null :articles, :content, true
    change_column_null :articles, :user_id, true
  end
end
