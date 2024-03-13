module Messages
    def self.get_message(key)
        messages = {
            'empty_username' => 'Epic sadface: Username is required',
            'empty_password' => 'Epic sadface: Password is required',
            'invalid_credentials' => 'Epic sadface: Username and password do not match any user in this service',
        }
        messages[key]
    end
end
