When /^I designate a route$/ do
  on_page(InventoryPage).route = 'Lane'
end

When /^I assign a driver$/ do
  on_page(InventoryPage).driver = 'Ted'
end

When /^I fill the inventory$/ do
  on_page InventoryPage do |page|
    page.item_1 = 'Rocket Pop'
    page.item_2 = 'Icecream Sandwich'
    page.item_3 = 'Fudge Bar'
    page.item_4 = 'Rocket Pop'
  end
end

Then /^I should be able to send out a truck$/ do
  on_page(InventoryPage).submit
end

When /^I load the truck$/ do
  on_page(InventoryPage).load_the_truck
end


Then /^"([^"]*)" should contain:$/ do |dropdown,table|
    on_page InventoryPage do |page|
      page_list = page.send("#{dropdown}_element").options.map{|item| item.text}
      wanted_list = table.raw.flatten
      page_list.should == wanted_list
    end
end
