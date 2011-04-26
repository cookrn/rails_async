#Rails Async
A nice and CLEAN setup for an async rails app. There's nothing really to see here except for a few changed files

* Gemfile - add `mysql2`, `rack-fiber_pool`, and `thin`
* config/database.yml - change the adapter to `em_mysql2`
* config/initializers/rack_fiber_pool_middleware.rb - add in the Rack Fiber pool middleware and make the app threadsafe(removes Rack::Lock)

No nonsense with the `config.ru` file and everything else works as expected. This will...

* Run DB calls in fibers
* Run all web requests in fibers

You'll have to add in your own fibrous code for anything else that might block e.g. external API requests.

##Other Notes
* Start the server with `rails s thin`
* This requires ruby v1.9.2
* Logging might not work

