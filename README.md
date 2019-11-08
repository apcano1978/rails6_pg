# FRONT & BACK rails app using mysql as database adapter

This repo is the standard boylerplate we are using to start a Rails 6 project with the following technologies:

## Versions and preinstalled gems

* Ruby-version: 2.6.3

* Rails version: 6.0.1

* Database Adapter: Postgresql

* Test suite: RSpec, Capybara, Shoulda & Factory Bot

* Simple authentication pre-coded using bcrypt and has_secure_password

* Bootstrap 4

* Font awesome icons

## Installation Instructions:

1. Clone this repo into your local machine
2. 

## Models and migrations for:
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

## Services (job queues, cache servers, search engines, etc.)

## Built-in tests

## Deployment instructions

## Built in functionality

* Annotate Models
Gem annotate is already installed and some basic models come already annotated, remember run:

`annotate --exclude tests,fixtures,factories,serializers`

in your terminal if you want to annotate new migrations you perform in model files

## Git Ignore configured to exclude:
   #### database.yml
   #### secrets.yml
   #### deploy-secrets.yml
