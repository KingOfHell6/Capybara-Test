#language: pt

Funcionalidade: Comprar
  Eu como usuário
  Quero comprar um produto

  Cenário: Comprar um produto
    Dado eu esteja logado
    Quando eu adiciono um produto no carrinho 
    Então eu finalizo a compra
    E o sistema registra o meu pedido
