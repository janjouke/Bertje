class RenameParentToParentId < ActiveRecord::Migration
  def up
    rename_column :steps, :parent, :parent_id
  end

  def down
    rename_column :steps, :parent_id, :parent
  end
end
