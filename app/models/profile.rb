class Profile < ActiveRecord::Base
  attr_accessible :height, :weight, :name, :birth_date, :gender
  belongs_to :user
  has_many :dailies,  dependent: :destroy
  after_initialize :default_values


    def default_values
      self.name ||= "default data"
      self.birth_date ||= "1990-11-11"
      self.weight ||= 50
      self.height ||= 160
      self.gender ||= 'f'
    end

  def countIdealWeight(h, g)
    weight  = self.weight
  	if (g == 'f')
  		weight = h-110
  	else 
  		weight = h-100
  	end
    
  	return weight
  end

end
