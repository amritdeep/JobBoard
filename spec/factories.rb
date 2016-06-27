# spec/factories.rb
# This will guess the Job class  

FactoryGirl.define do

	factory :user do
	    email { Faker::Internet.email }
	    password "password"
	    password_confirmation "password"
	    confirmed_at Date.today
	end

	factory :job do
		title "ROR Developer"
		location "TX"
		summary "ROR Developer"
		company "My company"
	end
end	
