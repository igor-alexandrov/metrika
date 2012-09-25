Metrika
=======

Wrapper for Yandex.Metrika API

### Info

**Under heavy development!**

### Usage

    c = Metrika::Client.new('your_app_id', 'your_app_password')

    # if you don't have token yet
    c.authorization_url
    c.authorize_token('authorization_code')

    # if you alredy have token
    c.restore_token('token_code')

    # counters
    c.get_counters
    c.creater_counter(params)
    c.get_counter(id)
    c.update_counter(id, params)
    c.delete_counter(id)
    c.check_counter(id)