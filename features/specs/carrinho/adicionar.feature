#language: pt

@bread_bakery
Funcionalidade: Adicionar ao carrinho
Para que eu possa finalizar uma compra
Sendo um cliente que já decidiu o que deseja comer
Posso adicionar itens ao meu carrinho

    
    Cenário: Adicionar 1 unidade
        Dado que o produto desejado é "Cup Cake"
        E o valor do produto é de "R$ 8,70"
        Quando eu adiciono 1 unidade(s) 
        Então deve ser adicionado 1 unidade(s) deste item
        E o valor total deve ser de "R$ 8,70"

   
    Cenário: Adicionar 2 unidades
        Dado que o produto desejado é "Donut"
        E o valor do produto é de "R$ 2,50"
        Quando eu adiciono 2 unidade(s)
        Então deve ser adicionado 2 unidade(s) deste item
        E o valor total deve ser de "R$ 5,00"

    @temp
    Cenário: Adicionar varios itens
        Dado que o produto desejado são:
        |nome                  |preco   |
        |Cup Cake              |R$ 8,70 | 
        |Donut                 |R$ 2,50 |
        |Pão Artesanal Italiano|R$ 15,09|  
        Quando eu adiciono todos os itens no carrinho
        Então vejo todo os itens no carrinho
        E o valor total deve ser de "R$ 27,10"
        

    