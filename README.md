[![Build Status](https://secure.travis-ci.org/igor-alexandrov/metrika.png)](http://travis-ci.org/igor-alexandrov/metrika)
[![Dependency Status](https://gemnasium.com/igor-alexandrov/metrika.png)](http://gemnasium.com/igor-alexandrov/metrika)
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/igor-alexandrov/metrika)

# Metrika

Wrapper for [Yandex.Metrika](http://metrika.yandex.ru/) API. Gem provides easy-to-use methods to work with counters, goals, filters, operations, grants and statistics.

Inspired by [Wynn Netherland's LinkedIn Gem](https://github.com/pengwynn/linkedin).


## Installation

[sudo] gem install linkedin

## Usage – JSON API

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