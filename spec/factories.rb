require 'factory_girl'
FactoryGirl.define do
  	factory :user do
	    name     'Example User'
	    email    'example1@railstutorial.org'
	    password 'foobar'
	    password_confirmation 'foobar'
	end
end