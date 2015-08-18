 Given(/^there's a user first_name "(.*?)" with "(.*?)" last_name$/) do |first_name, last_name|
  @post = FactoryGirl.create(:user, first_name: first_name, last_name: last_name)
end

When(/^I am on the homepage$/) do
  visit root_path
end




