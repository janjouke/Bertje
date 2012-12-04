class Appreciation < ActiveRecord::Base
  attr_accessible :step_id, :user_id, :value
  belongs_to :step
  belongs_to :user
end
