FactoryGirl.define do 
	factory :user do 
		username "stuff"
		password "123456"
		email {"#{username}@gmail.com"}
	end
end