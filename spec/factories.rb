FactoryGirl.define do
  factory :user do
    name     "Keisuke Yoshida"
    email    "y.keisuke0220@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end