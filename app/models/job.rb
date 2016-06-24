class Job < ActiveRecord::Base
	# resourcify
	has_and_belongs_to_many :users
	
	validates :title, presence: true
	validates :company, presence: true
	validates :summary, presence: true
end

