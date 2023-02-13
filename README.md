# README

This README would normally document whatever steps are necessary to get the
application up and running.

### Generate basic flow

1. Generate controller

2. Edit route file with resources

3. Add methods for controllers

4. Create view which have the same name with method in controller

### Database Setup

1. Edit file database.yml for other database (optional)

2. Generate migration file with command

3. Edit type for column and specify column name (e.g: `t.string :title`)

4. Run migration with rails db:migrate

5. Create file model and inherit from ApplicationRecord

6. Check again with console `rails c`

### Extract from database and return to user via controller

1. `index` method to return all records

2. `new` method to return form

3. `edit` method to return form

4. `show` method to return a single record by id param

5. `destroy` method must use `data : { turbo_method: :delete}` in rails >= 7

6. Need to permit field when **create** or **update** due to security issues

7. Detach general/helper functions in controller to be `private` ones because the public ones are used to handle request

### Validate data before update or create to DBs

1. Specific methods in validate in model file

### Migration and Config for reference models - foreign keys

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
