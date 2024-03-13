class InventoryPage < SitePrism::Page
    set_url('/inventory.html')

    sections :inventory_items, InventoryItem, '.inventory_item'
    element :shopping_cart_link, 'a.shopping_cart_link'

    def add_first_product_to_cart
        inventory_items.first.add_to_cart_button.click
    end

    def open_shopping_cart
        shopping_cart_link.click
    end
end
