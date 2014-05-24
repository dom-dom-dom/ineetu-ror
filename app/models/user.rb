class User < ActiveRecord::Base
	validates :username, presence: true
	validates :email, presence: true
	validates :password, presence: true

	has_many :lists, dependent: :destroy
	has_many :tasks, through: :lists
end

