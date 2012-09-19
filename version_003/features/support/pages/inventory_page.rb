class InventoryPage
  include PageObject

  select_list(:route, :name => 'route')
  select_list(:driver, :name => 'driver')
  select_list(:item_1, :name => 'item_1')
  select_list(:item_2, :name => 'item_2')
  select_list(:item_3, :name => 'item_3')
  select_list(:item_4, :name => 'item_4')
  button(:submit, :name => 'submit')
  link(:logout, :name => 'logout')

  def select_route(route)
    self.route = route
  end

  def choose_driver(driver)
    self.driver = driver
  end

  def pick_inventory(item_1, item_2, item_3, item_4)
    self.item_1 = item_1
    self.item_2 = item_2
    self.item_3 = item_3
    self.item_4 = item_4
  end
end
