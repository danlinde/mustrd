# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name 'Piglet Bank'
    description 'Designed for anyone who has far too much money and loose change'
    quantity 1
    price 4850.00
  end
end
