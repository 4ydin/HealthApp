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

require 'test_helper'

class PeriodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
