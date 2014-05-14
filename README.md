---
languages: ruby
tags: scraping, nokogiri, modules, mixins
---

# Shoutkey
Shoutkey is a web app that creates short-lived, shoutable urls for sharing. We're going to create a module that uses this service. We'll then mix it in to a Link class we create.

## Dependencies
Mixed in modules often depend on the object having certain methods defined. The Link class must implement the `#url` method. (Your method doesn't need the pound sign. It's a way of denoting an instance method. `Link#url`).