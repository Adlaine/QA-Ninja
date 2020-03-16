
Dado("que o produto desejado é {string}") do |produto|
    @produto_nome = produto
end
  
Dado("o valor do produto é de {string}") do |valor|
    @produto_valor = valor
end
  
Quando("eu adiciono {int} unidade\\(s)") do |quantidade|
    quantidade.times do
        find(".menu-item-info-box", text: @produto_nome.upcase).find(".add-to-cart").click
    end
end
  
Então("deve ser adicionado {int} unidade\\(s) deste item") do |quantidade|
    cart = find('#cart')
    expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}"
end
  
Então("o valor total deve ser de {string}") do |valor_total|
    cart = find("#cart")
    total = find("tr", text: 'Total:').find("td")
    puts total.text 
    expect(total.text).to eql valor_total
    sleep 5
end

#Lista de produtos

Dado("que o produto desejado são:") do |table|                                
    @product_list = table.hashes
    puts @product_list
end                                                                           
                                                                                
Quando("eu adiciono todos os itens no carrinho") do                           
    pending # Write code here that turns the phrase above into concrete actions 
end                                                                           
                                                                                
Então("vejo todo os itens no carrinho") do                                    
    pending # Write code here that turns the phrase above into concrete actions 
end                                                                           