# Visit web page
Given(/^I am on "([^"]*)"$/) do |site|
  visit(site)
end

# Click on item by first index
Given(/^I click on "([^"]*)" item by index$/) do |btn|
  all("btn")[0].click
end

# Click on first item
Given(/^I click on "([^"]*)" first item match$/) do |btn|
  first(btn).click
end

# Click on item by button id
Given(/^I click on "([^"]*)" button$/) do |btn|
  click_button(btn)
end

# Click on item by text link
Given(/^I click on "([^"]*)" link$/) do |link|
  click_link(link)
end

# Select option by id
When(/^I select "([^"]*)" from "([^"]*)"$/) do |option, select_box|
  select(option, from: select_box)
end

# Select option using id
When(/^I select "([^"]*)" from "([^"]*)" using id option$/) do |option, select_box|
  select(option, from: select_box)
end

# Select option using first index
When(/^I select "([^"]*)" from "([^"]*)" using index option$/) do |option, select_box|
  select(option, from: select_box)
end

# Check box using id option
When(/^I check "([^"]*)" in check box$/) do |check|
  check(check)
end

# Fill in fields
When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, with: value)
end

# Assert that an element does not exists
Then(/^I expect to not see "([^"]*)"$/) do |css|
 assert_no_selector(css)
end

# Click on each button using an Example class based on PageObject
Given(/^I click on each button$/) do
  @example.buttons_click
end

# Click on each check box using an Example class based on PageObject
When(/^I check each check box$/) do
  @example.all_check_box
end

# Fill in all fields using an Example class based on PageObject
When(/^I fill in all fields$/) do
  @example.fill_each_fields
end

# Assert that a list of buttons is not being showed using an Example class based on PageObject
Then(/^I expect to see all the buttons in buttons panel$/) do
  @example.has_buttons
end
