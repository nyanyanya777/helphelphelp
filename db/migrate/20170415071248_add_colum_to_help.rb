class AddColumToHelp < ActiveRecord::Migration
  def change
    add_column :helps, :URL, :string
    add_column :helps, :bill, :string
  end
end
