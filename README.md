[![Build Status](https://secure.travis-ci.org/igor-alexandrov/metrika.png)](http://travis-ci.org/igor-alexandrov/metrika)
[![Dependency Status](https://gemnasium.com/igor-alexandrov/metrika.png)](http://gemnasium.com/igor-alexandrov/metrika)
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/igor-alexandrov/metrika)

# Metrika

Wrapper for [Yandex.Metrika](http://metrika.yandex.ru/) API. Gem provides easy-to-use methods to work with counters, goals, filters, operations, grants and statistics.

Inspired by [Wynn Netherland's LinkedIn Gem](https://github.com/pengwynn/linkedin).

[API Documentation](http://api.yandex.ru/metrika/doc/ref/concepts/About.xml)

## Installation

    [sudo] gem install linkedin

## Usage – JSON API

### Authentication

Yandex's API uses Oauth for authentication. Luckily, the Yandex gem hides most of the details from you.

If you have never used Metrika API or you want to change your authentication credentials or your authorization token expired, then you should create new one:
    
    require 'rubygems'
    require 'metrika'

    # get your API credentials at https://oauth.yandex.ru/
    client = Metrika::Client.new('your_app_id', 'your_app_password')

    client.authorization_url
     => "https://oauth.yandex.ru/authorize?response_type=code&client_id=<your_app_id>"

    # follow the authrization url
    # you will be redirected to the callback url, specified in your application settings
    # user authorization code from params to get authorization token
    client.authorize_token(params[:code])

    # if no error is raised then you are free to use any API method

If you want to restore previously used authrization token, it is done easily too:

    require 'rubygems'
    require 'metrika'

    # get your API credentials at https://oauth.yandex.ru/
    client = Metrika::Client.new('your_app_id', 'your_app_password')

    client.restore_token('token_code')

### Counters
        
    client.get_counters
    client.creater_counter(params)
    client.get_counter(id)
    client.update_counter(id, params)
    client.delete_counter(id)
    client.check_counter(id)

### Goals, filters, operations, grants

    client.get_counter_goals(counter_id)
    client.create_counter_goal(counter_id, params)
    client.get_counter_goal(counter_id, id)
    client.update_counter_goal(counter_id, id, params)
    client.delete_counter_goal(counter_id, id)

    client.get_counter_filters(counter_id)
    client.create_counter_filter(counter_id, params)    
    client.get_counter_filter(counter_id, id)
    client.update_counter_filter(counter_id, id, params)
    client.delete_counter_filter(counter_id, id)

    client.get_counter_operations(counter_id)
    client.create_counter_operation(counter_id, params)    
    client.get_counter_operation(counter_id, id)
    client.update_counter_operation(counter_id, id, params)
    client.delete_counter_operation(counter_id, id)

    client.get_counter_grants(counter_id)
    client.create_counter_grant(counter_id, params)    
    client.get_counter_grant(counter_id, id)
    client.update_counter_grant(counter_id, id, params)
    client.delete_counter_grant(counter_id, id)

### Statistics

Statistics is the most wonderful part of Yandex.Metrika and it is fully available in Metrika gem.
All statistics reports support :date1 and :date2 parameters among other parameters.

**Traffic**

    client.get_counter_stat_traffic_summary(counter_id, :group => :month, :date1 => Date.parse('20110925'), :date2 => Date.today)
    client.get_counter_stat_traffic_deepness(counter_id, :date1 => Date.parse('20110925'), :date2 => Date.today)
    client.get_counter_stat_traffic_hourly(counter_id, params)
    client.get_counter_stat_traffic_load(counter_id, params)

**Sources**

    client.get_counter_stat_sources_summary(counter_id, params)
    client.get_counter_stat_sources_sites(counter_id, params)
    client.get_counter_stat_sources_search_engines(counter_id, params)
    client.get_counter_stat_sources_phrases(counter_id, params)
    client.get_counter_stat_sources_marketing(counter_id, params)
    client.get_counter_stat_sources_direct_summary(counter_id, params)
    client.get_counter_stat_sources_direct_platforms(counter_id, params)
    client.get_counter_stat_sources_direct_regions(counter_id, params)
    client.get_counter_stat_sources_tags(counter_id, params)

**Content**
        
    client.get_counter_stat_content_popular(counter_id, params)
    client.get_counter_stat_content_entrance(counter_id, params)
    client.get_counter_stat_content_exit(counter_id, params)
    client.get_counter_stat_content_titles(counter_id, params)
    client.get_counter_stat_content_url_param(counter_id, params)
    client.get_counter_stat_content_user_vars(counter_id, params)
    client.get_counter_stat_content_ecommerce(counter_id, params)

**Geo**

    client.get_counter_stat_geo(counter_id, params)

**Demography**

    client.get_counter_stat_demography_age_gender(counter_id, params)
    client.get_counter_stat_demography_structure(counter_id, params)

**Tech**    

    client.get_counter_stat_tech_browsers(counter_id, params)
    client.get_counter_stat_tech_os(counter_id, params)
    client.get_counter_stat_tech_display(counter_id, params)
    client.get_counter_stat_tech_mobile(counter_id, params)
    client.get_counter_stat_tech_flash(counter_id, params)
    client.get_counter_stat_tech_silverlight(counter_id, params)
    client.get_counter_stat_tech_dotnet(counter_id, params)
    client.get_counter_stat_tech_java(counter_id, params)
    client.get_counter_stat_tech_cookies(counter_id, params)
    client.get_counter_stat_tech_javascript(counter_id, params)    

## Usage – Object API    

Under development…

## Note on Patches / Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but
   bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2012 [Igor Alexandrov](http://igor-alexandrov.github.com/). See LICENSE for details.