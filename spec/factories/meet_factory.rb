FactoryGirl.define do
  factory :meet do
    association :tournament, factory: :tournament, name: "created name from meet factory"
    association :athlete, factory: :athlete
    place 1
  end
end
