class AddIndexesToTables < ActiveRecord::Migration
  def change
    add_index :comments, :step_id, name: 'index_comments_on_step_id'
    add_index :comments, :user_id, name: 'index_comments_on_user_id'
    add_index :appreciations, :step_id, name: 'index_appreciations_on_step_id'
    add_index :appreciations, :user_id, name: 'index_appreciations_on_user_id'
  end
end
