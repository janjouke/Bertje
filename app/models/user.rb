class User < ActiveRecord::Base
  # new columns need to be added here to be writable through mass assignment
  has_many :comments
  has_many :steps
  has_many :appreciations
  
  attr_accessible :username, :email, :password, :password_confirmation
  
  has_secure_password
  validates_presence_of :password, :on => :create
end
