# Cenário: Login com sucesso
Dado('eu acesse a tela de login') do
    @login_page = LoginPage.new
    @login_page.load
end

Quando('eu efetuo login no sistema') do
    @login_page.login_with('standard_user', 'secret_sauce')
end

Então('o sistema me redireciona para a página de produtos') do
    expect(page).to have_current_path(ENV['PRODUCTS_URL'])
end

# Cenário: Login no sistema com credenciais erradas
Quando('eu tento efetuar login com credenciais inválidas') do
    @login_page.login_with('standard_user', 'wrong_password')
end

Então('o sistema não permite o login') do
    expect(page).to have_current_path(ENV['BASE_URL'], url: true)
end

E('o sistema apresenta uma mensagem de erro') do
    expect(page).to have_content(Messages.get_message('invalid_credentials'))
end
