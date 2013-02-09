class Profile < ActiveRecord::Base
  attr_accessible :height, :weight, :name, :birth_date, :gender
  belongs_to :user
  has_many :dailies,  dependent: :destroy
  has_many :periods,  dependent: :destroy
  after_initialize :default_values


    def default_values
      self.name ||= "default data"
      self.birth_date ||= "1990-11-11"
      self.weight ||= 50
      self.height ||= 160
    end

  def countIdealWeight(h)
    weight  = self.weight
  	weight = h-110  
  	return weight
  end

end
