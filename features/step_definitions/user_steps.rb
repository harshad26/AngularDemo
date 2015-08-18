require 'uri'
require 'cgi'

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, :with => value) 
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

Then /^I should see "([^"]*)"$/ do |message|
  page.has_content?(message)
end

When(/^I clicked on "(.*?)" link within "(.*?)"$/) do |link, container|
  within(container) do
    click_link(link)
  end
end
When(/^I clicked on "(.*?)" link$/) do |arg1|
  click_button(button)
end


When /^I confirm popup$/ do
  page.driver.browser.switch_to.alert.accept
end