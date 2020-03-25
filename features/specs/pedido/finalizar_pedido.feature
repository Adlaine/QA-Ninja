#language: pt
@green_food @regressivo
Funcionalidade: Finalizar pedido
Para que eu possa receber o pedido no meu endereço
Sendo um usuario que fechou o carrinho com itens
Posso finalizar o pedido

    Cenário: Finalizar pedido com Cartão Refeição
        Dado que eu fechei o pedido com os itens:
           | quantidade | nome                | descricao                              | subtotal |
           | 1          | Suco Detox          | Suco de couve cenoura, salsinha e maçã | R$ 14,90 |
           | 2          | Hamburger de Quinoa | Cheio de fibrase muito saboroso        | R$ 21,00 |
        E informei os meus dados de entrega:
        |nome        |Isabela                |
        |email       |eu@gmail.com           |
        |rua         |Avenida Qualquer coisa |
        |numero      |77                     |
        |complemento |24 D                   |
        Quando eu finalizo o pedido com "Cartão Refeição"
        Então devo ver a seguinte mensagem:
        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """