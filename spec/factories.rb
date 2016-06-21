# spec/factories.rb
# This will guess the Job class  

FactoryGirl.define do
	factory :job do
		title "ROR Developer"
		location "TX"
		summary "ROR Developer"
		company "My company"
	end
end	
