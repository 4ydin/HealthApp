# == Schema Information
#
# Table name: tips
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  context    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tip < ActiveRecord::Base
  attr_accessible :context, :name
end
