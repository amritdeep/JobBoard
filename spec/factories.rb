# spec/factories.rb
# This will guess the Job class  

FactoryGirl.define do
  factory :role do
    
  end
  factory :user do
    
  end
	factory :job do
		title "ROR Developer"
		location "TX"
		summary "ROR Developer"
		company "My company"
	end
end	
