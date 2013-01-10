class Daily < ActiveRecord::Base
  attr_accessible :content, :total, :calculated_at, :profile_id
  belongs_to :profile
end
