class RenameUrlColumnToUrl < ActiveRecord::Migration
  def change
    add_column :helps, :url, :string
  end
end
