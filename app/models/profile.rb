class Profile < ActiveRecord::Base
  attr_accessible :height, :weight, :name, :birth_date
  belongs_to :user
  has_many :dailies,  dependent: :destroy
end
