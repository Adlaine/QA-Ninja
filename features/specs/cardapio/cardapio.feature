#language: pt

Funcionalidade: Cardápio
Para que eu possa decidir o que eu possa comer
Sendo um usuario que escolheu um restaurante
Posso acessar o cardapio

    Contexto: Restaurantes
        Dado que acesso a lista de restaurantes

    @cardapio
    Cenário: Produto
        Dado que acesso a lista de restaurantes
        Quando eu escolho um restaurante "Burger House"
        Então vejo os seguintes itens disponiveis no cardapio
            |produto        |descricao                       |preco   |
            |Classic Burger |O clássico. Não tem como errar. |R$ 18,50|
            |Batatas Fritas |Batatas fritas crocantes        |R$ 5,50 |
            |Refrigerante   |O refri mais gelado da cidade.  |R$ 4,50 |

    
    Cenário: Carrinho vazio        
        Quando eu escolho um restaurante "Burger House"
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"