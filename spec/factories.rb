FactoryGirl.define do
  factory :user do
    name "Hubert"
    email "Hubert@mail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
