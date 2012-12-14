class Profile < ActiveRecord::Base
  attr_accessible :height, :weight
  belongs_to :user
end
