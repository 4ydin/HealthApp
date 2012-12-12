# == Schema Information
#
# Table name: foods
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  calory       :integer
#  protein      :integer
#  carbohydrate :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Food < ActiveRecord::Base
  attr_accessible :calory, :carbohydrate, :name, :protein
end
