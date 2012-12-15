class Profile < ActiveRecord::Base
  attr_accessible :height, :weight, :name, :birth_date
  belongs_to :user
end
