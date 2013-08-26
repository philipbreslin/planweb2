# Reference: http://ruby.railstutorial.org/ruby-on-rails-tutorial-book

FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

  factory :PlanningApplication do
    content "Lorem ipsum"
    user_id "Lorem ipsum"
    applicant_name "Lorem ipsum"
    commenced_on "Lorem ipsum"
    commencement_notice_received_by_planning_authority_on "Lorem ipsum"
    decision "Lorem ipsum"
    decision_expected_on "Lorem ipsum"
    decision_received_on "Lorem ipsum"
    description "Lorem ipsum"
    extension_granted_on "Lorem ipsum"
    extension_requested_on "Lorem ipsum"
    location_address "Lorem ipsum"
    lodged_with_planning_authority_on "Lorem ipsum"
    number_of_observations "Lorem ipsum"
    planning_authority "Lorem ipsum"
    planning_authority_reference "Lorem ipsum"
    type "Lorem ipsum"
    url_to_observations "Lorem ipsum"
    validated_by_planning_authority_on "Lorem ipsum"
    user
  end
end




