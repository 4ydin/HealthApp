class User < ActiveRecord::Base
  attr_accessible :birth_date, :email, :height, :name, :password, :username, :weight
end
