class User < ActiveRecord::Base
	has_many :comments
	validates :username, :presence => true, :uniqueness => true
	validates :password, :presence => true
end
