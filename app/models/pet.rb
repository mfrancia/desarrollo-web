class Pet < ActiveRecord::Base
  attr_accessible :age, :name, :raze_id, :user_id
  belongs_to :user
end
