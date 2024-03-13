# Cenário: Compra de um produto
Dado('eu esteja logado') do
    @login_page = LoginPage.new
    @login_page.load
    @login_page.login_with('standard_user', 'secret_sauce')
    expect(page).to have_current_path(ENV['PRODUCTS_URL'])
end

Quando('eu adiciono um produto no carrinho') do
    @products_page = InventoryPage.new
    @products_page.load
    @products_page.add_first_product_to_cart
end

Então('eu finalizo a compra') do
    @products_page.open_shopping_cart

    @cart_page = CartPage.new
    expect(@cart_page.has_items?).to be true
    @cart_page.checkout

    @checkout_page = CheckoutPage.new
    @checkout_page.fill_checkout_form(first_name: 'Jane', last_name: 'Doe', postal_code: '10278-0004')
    @checkout_page.continue_checkout
    @checkout_page.finish_checkout
end
  
E('o sistema registra o meu pedido') do
    expect(@checkout_page.order_completed_successfully?).to be true
end
