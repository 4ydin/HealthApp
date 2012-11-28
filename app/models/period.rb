# == Schema Information
#
# Table name: periods
#
#  id          :integer          not null, primary key
#  started_at  :date
#  finished_at :date
#  duration    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Period < ActiveRecord::Base
  attr_accessible :duration, :finished, :started_at
end
