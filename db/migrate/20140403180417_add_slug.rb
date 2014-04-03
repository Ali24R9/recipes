class AddSlug < ActiveRecord::Migration
  def change
    add_column :recipes, :slug, :string

    add_column :tags, :slug, :string
  end
end
