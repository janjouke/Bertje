class Comment < ActiveRecord::Base
  attr_accessible :body, :user_id, :step_id
  belongs_to :step
  belongs_to :user
end
