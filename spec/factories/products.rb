# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :product do
  	sequence(:name) { |n| "iPhone#{n}" }
  	description "Not really a phone"
  	quantity 10
  	price 599.90
  	image_file_name "image"
  end
  
end
