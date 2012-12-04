class Step < ActiveRecord::Base
  has_many :comments
  has_many :tags
  has_many :appreciations
  belongs_to :user
  
  attr_accessible :body, :parent_id, :step_type, :user_id, :title, :appreciation_counter
  
  scope :rootq, where(step_type: 'question', parent_id: nil)
  scope :q, where(step_type: 'question')
  scope :a, where(step_type: 'answer')
  
  def substeps
    Step.where("parent_id = ?", self.id)
  end
        
  def parent
    Step.find(self.parent_id)
  end   
  
  def project
    step = self
    while step.parent_id && !step.step_type=="question"
      step = step.parent
    end
    return step
  end
  
end
