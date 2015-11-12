FactoryGirl.define do
  factory :user do
    name     "Юрий Горчаков"
    email    "yuri.gorchakov@tslrussia.org"
    password "foobar"
    password_confirmation "foobar"
  end
end