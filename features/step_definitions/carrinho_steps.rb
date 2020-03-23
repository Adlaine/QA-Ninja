
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
    expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}" # interpolação de string para validar o produto no carrinh
end
  
Então("o valor total deve ser de {string}") do |valor_total|
    cart = find("#cart")
    total = find("tr", text: 'Total:').find("td")
    puts total.text 
    expect(total.text).to eql valor_total
end

#Lista de produtos

Dado("que o produto desejado são:") do |table|                                
    @product_list = table.hashes #coverteu a tabela para um array com todos os produtos
end                                                                           
                                                                                
Quando("eu adiciono todos os itens no carrinho") do                           
    @product_list.each do |p| 
        p["quantidade"].to_i.times do
            find(".menu-item-info-box", text: p["nome"].upcase).find(".add-to-cart").click
        end
    end
end                                                                           
                                                                                
Então("vejo todo os itens no carrinho") do                                    
    cart = find("#cart")
    @product_list.each do |p|
        expect(cart).to have_text "(#{p["quantidade"]}x) #{p["nome"]}"
    end
end      

# Remover itens do carrinho

Dado("que eu tenho os seguintes itens no carrinho") do |table|
    @product_list = table.hashes
    #recurso que chama um step do bdd (adicionar.feature) dynamics steps
    steps %{ 
        Quando eu adiciono todos os itens no carrinho
    }
end

Quando("eu removo somente o {int}") do |item|
    cart = find("#cart")
    cart.all("table tbody tr")[item].find(".danger").click    
end

Quando("eu removo todos os itens") do
    @product_list.each_with_index do |value, idx|
        cart = find("#cart")
        cart.all("table tbody tr")[idx].find(".danger").click  
    end
end

Quando("eu limpo o meu carrinho") do
    click_button "Limpar"
end
  
Então("vejo a seguinte mensagem no carrinho {string}") do |mensagem|
    cart = find("#cart")
    expect(cart).to have_text mensagem
end