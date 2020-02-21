## FRONT & BACK rails app using Postgres as database adapter

This repo is the standard boylerplate we are using to start a Rails 6 project with the following technologies:

### Versions and preinstalled gems

* Ruby-version: 2.6.3

* Rails version: 6.0.1

* Database Adapter: Postgresql

* Test suite: RSpec, Capybara, Shoulda & Factory Bot

* Simple authentication pre-coded using bcrypt and has_secure_password

* Bootstrap 4

* Font awesome icons

### Installation Instructions:

1. Clone this repo into your local machine
2. Create `database.yml` file and set it according to your local environment with a postgres database
3. Run `bundle install` in project folder
4. Run `yarn install` in project folder
4. Execute `Rails db:create && Rails db:migrate` 
5. Run `rails s` and go to `http://localhost:3000` in your browser


### Models and migrations for:
  * User - User Model to handle application users
    - Relations: Role: n-n, Session: 1-n
  * Session
    - Relations: User: 1-n
  * Role
    - Relations: User: n-n, Permission: n-n, Menu: n-n
  * Permission
    - Relations: Role: n-n
  * Menu
    - Relations: Role: n-n, MenuElement: n-n
  * MenuElement
    - Relations: Menu: n-n

### Project structure:

index   (this is the public site all this controllers inherit from ApplicationController)
|-- admin (this is the admin area, in case it is necessary, controllers inherit from AdminBaseControler)
|-- intranet (this is the intranet area, in case it is necessary, controllersinherit from IntranetBaseController)
|-- api
    |-- v1 (First Api version Following convention, controllers inherit from ApiBaseController)

### Routes preset

Public:
* root: 'index#index'

Admin:

Intranet:

Api:

### Services (job queues, cache servers, search engines, etc.)

### Built-in tests
  * Unit tests for User, Session, Role, Permission, Menu, MenuElement

### Built in functionality

* Annotate Models
Gem annotate is already installed and some basic models come already annotated, remember run:

`annotate --exclude tests,fixtures,factories,serializers`

in your terminal if you want to annotate new migrations you perform in model files

### Git Ignore configured to exclude:
   #### database.yml
   #### secrets.yml
   #### deploy-secrets.yml
