FactoryGirl.define do
sequence(:email) {|n| "user#{n}@example.com"}

	factory :user do
		email
		password "password"
		first_name "john"
		last_name "smith"
		admin false
	end

	factory :admin, class: User do
		email
		password "abcdefghi"
		fist_name "Bill"
		last_name "Bailey"
		admin true
	end
end