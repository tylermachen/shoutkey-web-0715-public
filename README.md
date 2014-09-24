---
languages: ruby
tags: scraping, nokogiri, modules, mixins
---

# Shoutkey
Shoutkey is a web app that creates short-lived, shoutable urls for sharing. 

Visit [Shoutkey.com](http://shoutkey.com/) and see what happens when you type in [http://flatironschool.com/](http://flatironschool.com/). Notice that clicking the button `Shout it!` takes you to a new page with a randomly chosen word. It could be `reorganize`, `socks`, or `held`. It doesn't matter. The point is that if you then visit the url shoutkey.com/name-of-random-word-here, it will redirect you to that site.

We're going to create a module that uses this service. We'll then mix it in to a Link class we create.

## Dependencies
Mixed in modules often depend on the object having certain methods defined. The Link class must implement the `#url` method. (Your method doesn't need the pound sign. It's a way of denoting an instance method. `Link#url`).

## Creating a Shoutkey
If you visit the page `http://shoutkey.com/new?url={my_url}` where `{my_url}` is a uri escaped uri, shoutkey will give you a shortend url for that link. Try it!
[HostileDeveloper.com](http://shoutkey.com/new?url=http%3A%2F%2Fhostiledeveloper.com%2F)
a URI escaped `http://hostiledeveloper.com` looks like this `http%3A%2F%2Fhostiledeveloper.com%2F`


## Nokogiri

Use Nokogiri to parse page that gets returned to you. return the word. The node you're looking for is `.hero-unit h1 a`
