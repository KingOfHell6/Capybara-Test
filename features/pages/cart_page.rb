class CartPage < SitePrism::Page
    set_url '/cart.html'

    elements :cart_items, '.cart_item'
    element :checkout_button, 'button[id="checkout"]'
    
    def has_items?
        cart_items.any?
    end
    
    def checkout
        checkout_button.click
    end
end
