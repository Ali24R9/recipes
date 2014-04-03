class AddColumn < ActiveRecord::Migration
  def change
    add_column :recipes, :content, :text
  end
end
