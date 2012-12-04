class AddColumnUserIdToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :user_id, :integer
    add_index :steps, :user_id, name: 'index_steps_on_user_id'
  end
end
