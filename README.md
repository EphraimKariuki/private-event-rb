# Private Event

A practice  site similar to a private [Eventbrite](https://www.eventbrite.com/) which allows users to create events and then manage user signups.

A user can create events. A user can attend many events. An event can be attended by many users. Events take place at a specific date and at a location (which you can just store as a string, like “Andy’s House”).

This project will requires us to model many-to-many relationships and also to be very conscious about foreign keys and class names (hint: you won’t be able to just rely on Rails’ defaults like you have before).



* Ruby version

* System dependencies

* Configuration

* Database creation
 
   1. Open `config/database.yml` and look for the development section:
     
        ```yaml
        default: &default
        adapter: postgresql             # Use PostgreSQL adapter
        encoding: unicode               # Use Unicode character encoding
        username: <%= ENV["PG_USERNAME"] %>  # Get DB username from environment
        password: <%= ENV["PG_PASSWORD"] %>  # Get DB password from environment
        host: localhost                 # Connect to DB running locally
        pool: 5                         # Set connection pool size
            
        ```
     Set the appropriate corresponding enviroment varibles of your `PG_USERNAME` and `PG_PASSWORD` 
    
  2. Run `rails db:create`  

* Database initialization
   

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
