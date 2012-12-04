class CreateSteps < ActiveRecord::Migration
  def self.up
    create_table :steps do |t|
      t.integer :parent, null: true
      t.string :title
      t.text :body
      t.string :step_type
      t.integer :appreciation_counter, default: 0, null: false

      t.timestamps
    end
  end
  def self.down
    drop_table :steps
  end
end
