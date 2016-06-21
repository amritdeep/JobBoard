class Job < ActiveRecord::Base
	resourcify
	
	validates :title, presence: true
	validates :company, presence: true
	validates :summary, presence: true
end
