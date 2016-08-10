# Usage
  - Run ``bundle install`` to install all dependencies
  - Environment variables:
    - Setup the application environment variables in the ``.env`` file
  - Database setup:
    ``` bash
      bundle exec rake db:create
      bundle exec rake db:migrate
    ```
  - Run ``ruby app.rb`` to start server

# Tests
  - Database setup:
    ``` bash
      bundle exec rake db:create
      bundle exec rake db:migrate
      bundle exec rake db:test:prepare
    ```
  - Run ``rspec`` to run all application specs or ``rspec path/to/file_spec.rb`` to run a specific set of specs.

# Useful commands
  - ``bundle exec irb -r app.rb``: Fire up the application via the command line (similar to ``rails c`` in the Ruby on Rails framework).
