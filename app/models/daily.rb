class Daily < ActiveRecord::Base
  attr_accessible :content, :total, :calculated_at
end
