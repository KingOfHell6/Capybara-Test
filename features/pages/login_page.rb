class LoginPage < SitePrism::Page
    set_url('')

    element :username_field, '#user-name'
    element :password_field, '#password'
    element :login_button, '#login-button'
    element :error_message, '.error-message-container.error'

    def fill_username(username)
        username_field.set(username)
    end

    def fill_password(password)
        password_field.set(password)
    end

    def submit_login
        login_button.click
    end

    def login_with(username, password)
        fill_username(username)
        fill_password(password)
        submit_login
    end
end
