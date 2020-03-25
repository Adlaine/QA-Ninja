
Before do
    page.current_window.resize_to(1430,800)
    @rest_list_page = RestauranteListPage.new 
    @rest_page = RestaurantePage.new
    @order_page = OrderPage.new
end

Before('@bread_bakery') do
    visit "restaurants/bread-bakery/menu"
end

Before('@green_food') do
    visit "restaurants/green-food/menu"
end