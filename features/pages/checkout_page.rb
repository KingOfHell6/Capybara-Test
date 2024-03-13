class CheckoutPage < SitePrism::Page
    set_url '/checkout-step-one.html'
  
    element :first_name_input, 'input[id="first-name"]'
    element :last_name_input, 'input[id="last-name"]'
    element :postal_code_input, 'input[id="postal-code"]'
    element :continue_button, 'input[id="continue"]'
    element :finish_button, 'button[id="finish"]'
    element :order_complete_container, '#checkout_complete_container'
    element :order_complete_header, '.complete-header'
    element :order_complete_text, '.complete-text'
    element :back_home_button, 'button[id="back-to-products"]'
  
    def fill_checkout_form(first_name:, last_name:, postal_code:)
      first_name_input.set first_name
      last_name_input.set last_name
      postal_code_input.set postal_code
    end
    
    def continue_checkout
        continue_button.click
    end
  
    def finish_checkout
      finish_button.click
    end

    def order_completed_successfully?
        order_complete_container && order_complete_header.text == 'Thank you for your order!'
    end
end
