Given /^I enter valid credentials$/ do
  visit_page LoginPage do |page|
    page.user_name = 'brain'
    page.password = 'brain'
  end
end

Given /^I enter invalid credentials$/ do
  visit_page LoginPage do |page|
    page.user_name = 'john'
    page.password = 'doe'
  end
end

When /^I login to the site$/ do
  on_page(LoginPage).login
end

Then /^I am on the inventory screen$/ do
  on_page(InventoryPage).route_element.should be_visible
end

Given /^I am logged into the Ice Cream site$/ do
  visit_page(LoginPage).login_with_credentials(:login_name => 'brain', :password => 'brain')
end

Then /^I see the message "([^"]*)"$/ do |message|
  @browser.text.include? (message)
end
