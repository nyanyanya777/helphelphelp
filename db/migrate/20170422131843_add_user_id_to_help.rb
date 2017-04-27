class AddUserIdToHelp < ActiveRecord::Migration
  def change
    add_column :helps, :user_id, :integer
  end
end
