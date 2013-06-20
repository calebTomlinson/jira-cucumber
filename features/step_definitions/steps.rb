Given /^a passing step with a <parameter>$/ do
  x=1
end
Given(/^a passing step with a parameter$/) do
  x=1
end
Then(/^it passes$/) do
  x=1
end
Then(/^it fails$/) do
  raise StandardError
end
Given(/^I set a resource (.*)$/) do |resource|
  $resource = resource
end