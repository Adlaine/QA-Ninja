require "base64"
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

After do
    shot_file = page.save_screenshot("log/screenshot.png") # tira um scfreenshot temporario
    shot_b64 = Base64.encode64(File.open(shot_file, "rb").read) # converte para base64
    embed(shot_b64, "image/png", "Screenshot")   # anexa no relatorio

    # if scenario.failed?
    #  ****   se quiser tirar os screenshot dos cenarios apenas que falharam, colocar os codigos acima 
    #  ****   dentro desse if 
    # end
end
