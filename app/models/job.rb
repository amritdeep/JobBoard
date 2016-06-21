class Job < ActiveRecord::Base
	validates :title, presence: true
	validates :company, presence: true
	validates :summary, presence: true
end
