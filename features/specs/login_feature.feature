#language: pt

Funcionalidade: Login
  Eu como usuário do sistema
  Quero efetuar login
  Para acessar o sistema

  Cenário: Login com sucesso
    Dado eu acesse a tela de login
    Quando eu efetuo login no sistema
    Então o sistema me redireciona para a página de produtos

  Cenário: Login no sistema com credenciais erradas
    Dado eu acesse a tela de login
    Quando eu tento efetuar login com credenciais inválidas
    Então o sistema não permite o login
    E o sistema apresenta uma mensagem de erro
