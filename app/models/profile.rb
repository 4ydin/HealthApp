class Profile < ActiveRecord::Base
  attr_accessible :height, :weight, :name, :birth_date, :gender
  belongs_to :user
  has_many :dailies,  dependent: :destroy

  def countIdealWeight(g, h)
    weight  = self.weight
  	if (g == 'f')
  		weight = h-110
  	else 
  		weight = h-100
  	end
    
  	return weight
  end

end
