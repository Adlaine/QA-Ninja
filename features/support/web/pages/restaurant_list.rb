class RestauranteListPage
    include Capybara::DSL

    def load
        visit '/restaurants'
    end

    def go(restaurant)
        find(".restaurant-item", text: restaurant.upcase).click
    end

    def list 
        restaurantes = all('.restaurant-item')
    end

end