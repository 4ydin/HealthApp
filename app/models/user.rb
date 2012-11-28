# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  username   :string(255)
#  birth_date :date
#  email      :string(255)
#  password   :string(255)
#  height     :integer
#  weight     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin      :boolean          default(FALSE)
#  last_login :datetime
#

class User < ActiveRecord::Base
  attr_accessible :birth_date, :email, :height, :name, :password, :username, :weight

end
