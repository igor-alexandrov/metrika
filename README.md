[![Build Status](https://secure.travis-ci.org/igor-alexandrov/metrika.png)](http://travis-ci.org/igor-alexandrov/metrika)
[![Dependency Status](https://gemnasium.com/igor-alexandrov/metrika.png)](http://gemnasium.com/igor-alexandrov/metrika)
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/igor-alexandrov/metrika)

# Metrika

Wrapper for [Yandex.Metrika](http://metrika.yandex.ru/) API. Gem provides easy-to-use methods to work with counters, goals, filters, operations, grants and statistics.

Inspired by [Wynn Netherland's LinkedIn Gem](https://github.com/pengwynn/linkedin).


## Installation

[sudo] gem install linkedin

## Usage – JSON API

### Authentication

Yandex's API uses Oauth for authentication. Luckily, the Yandex gem hides most of the details from you.

If you have never used Metrika API or you want to change your authentication credentials or your authorization token expired, then you should create new one:
    
    require 'rubygems'
    require 'metrika'

    # get your API credentials at https://oauth.yandex.ru/
    c = Metrika::Client.new('your_app_id', 'your_app_password')

    c.authorization_url
    => "https://oauth.yandex.ru/authorize?response_type=code&client_id=<your_app_id>"

    # follow authrization url and you will be redirected to callback url, specified in your application settings with authorization code in params
    # user authorization code from params to get authrization token
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

    #goals
    c.get_counter_goals(counter_id)
    c.create_counter_goal(counter_id, params)
    c.create_counter_goal(counter_id, params)
    c.get_counter_goal(counter_id, id)
    c.update_counter_goal(counter_id, id, params)
    c.delete_counter_goal(counter_id, id)

    #stats
    c.get_counter_stat_traffic_summary(1131265, :group => :month, :date1 => Date.parse('20110925'), :date2 => Date.today)

## Usage – Object API    

Later…