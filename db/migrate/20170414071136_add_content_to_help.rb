class AddContentToHelp < ActiveRecord::Migration
  def change
    add_column :helps, :content, :text
  end
end
