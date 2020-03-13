
Dado("que temos os seguintes restaurantes") do |table|
    @restaurant_data = table.hashes
end

Quando("acesso a lista de restaurantes") do
  visit '/restaurants'
end

Então("devo ver todos os restaurantes desta lista") do
    restaurantes = all('.restaurant-item')
    @restaurant_data.each_with_index do |value, index|
        expect(restaurantes[index]).to have_text value['nome'].upcase
        expect(restaurantes[index]).to have_text value['categoria']
        expect(restaurantes[index]).to have_text value['entrega']
        expect(restaurantes[index]).to have_text value['avaliacao']

    end
end