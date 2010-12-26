class User < ActiveRecord::Base
	has_many :comments,  :dependent => :destroy
	has_many :posts,  :dependent => :destroy
	validates :username, :presence => true, :uniqueness => true
	validates :password, :presence => true
end
