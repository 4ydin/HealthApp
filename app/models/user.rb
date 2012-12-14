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
  attr_accessible :birth_date, :email, :password, :password_confirmation, :height, :name, :username, :weight
  has_secure_password
  acts_as_authentic

  validates :email, presence:   true,
                  uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 1}, :on => :create   
  validates :password_confirmation, presence: { message: "Password can't be blank" }
  has_one :profile
end
