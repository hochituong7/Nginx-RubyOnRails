# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# run application
1. create 4 files: Dockerfile, Gemfile, Gemfile.lock, docker-compose.yml 
2. run cmd: docker-compose run --no-deps app rails new . --force --skip-sprockets --skip-coffee --skip-test --webpack
        * exlain: 
            --no-deps - Tells docker-compose run not to start any of the services in depends_on.
            --force - Tells rails to overwrite existing files, such as Gemfile.
            --database=postgresql - Tells Rails to default our db config to use postgres.
            --skip-sprockets - Since we're using webpacker we don't need sprockets or the asset pipeline.
            --skip-coffee - We're going to be writing ES6 JS, so we don't need coffeescript.
            --skip-test - We're going to install Rspec, so we don't need the unit test framework that comes with rails.
            --webpack - Tells Rails to go ahead and install webpack.
3. build app by run cmd: docker-compose build
4. run app: docker-compose up


5. create controller-view: docker exec -it app_ror6 rails generate controller todos index
6. create route
7. create model: docker exec -it app_ror6 rails generate model todos
8. migrate column db
9. create bd: docker exec -it app_ror6 rails db:migrate