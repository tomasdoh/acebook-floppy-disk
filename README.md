# AceBook        [![Build Status](https://travis-ci.org/tomasdoh/acebook-floppy-disk.svg?branch=master)](https://travis-ci.org/tomasdoh/acebook-floppy-disk)    [![Coverage Status](https://coveralls.io/repos/github/tomasdoh/acebook-floppy-disk/badge.svg?branch=master&service=github)](https://coveralls.io/github/tomasdoh/acebook-floppy-disk?branch=master&service=github) 

### [Team](https://github.com/tomasdoh/acebook-floppy-disk#team) |  [User stories](https://github.com/tomasdoh/acebook-floppy-disk#user-stories) |  [Getting started](https://github.com/tomasdoh/acebook-floppy-disk#getting-started) |  [Usage](https://github.com/tomasdoh/acebook-floppy-disk#usage) |  [Testing](https://github.com/tomasdoh/acebook-floppy-disk#testing) |   [Deployment](https://github.com/tomasdoh/acebook-floppy-disk#deployment) |   [Our approach](https://github.com/tomasdoh/acebook-floppy-disk#our-approach) |  [Contributing](https://github.com/tomasdoh/acebook-floppy-disk#contributing) 

Acebook is the latest Facebook clone to hit the web, powered by Ruby on Rails and a PostgreSQL database. Try it out by signing up and making your first post! https://aqueous-wave-77193.herokuapp.com/signup


## Team

* [Luisa Theodoro Paoliello](https://github.com/luisatheodoro)
* [Chris Gilbert](https://github.com/chrisjgilbert)
* [Cristopher Palacios](https://github.com/criszelaya24)
* [Kirill Zabrodin](https://github.com/kirillzabrodin)
* [Tomas Doherty](http://github.com/tomasdoh)

## User Stories

All of the user stories that have helped shape this project can be found [here](./user-stories.md).

## Getting started

First, clone this repository. Then type the following commands into your shell:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> rails s # Start the server at localhost:3000
```

To clean your local database, use the following shell commands:

```
> bin/rails db:drop
> bin/rails db:create
> bin/rails db:migrate
```
## Usage

You can sign up to use Acebook on the [homepage](https://aqueous-wave-77193.herokuapp.com). To change your avatar, register your email address at [Gravatar](https://en.gravatar.com) and follow the instructions to upload your chosen image.

## Our approach

We have documented all of the meetings we had during the development of this project on this repository's wiki. All page names are written in a format of 'MeetingType 00:00 01/01/2000'. Posts were made by individual members without agreement on a formal format. Each post summarizes the conversations had during the meeting.

## Testing

#### RSpec

`bundle exec rspec` to run all the RSpec feature and unit tests

#### Rubocop

`bundle` (if not installed)    
`rubocop` to run    

#### Test Coverage with Simplecov

Coverage reports are generated every time RSpec tests are run. To view the results:  
`bundle` (if not installed )   
`cd coverage`     
`open index.html`    

## Deployment

We deployed the application using Heroku. 

To deploy in the same way, first install the Heroku CLI. Then use the following commands:
```
heroku create
git push heroku master
```
Alternatively allow Travis (the Continuous Integration tool) to access your repo and deploy when you push to master – when the build is working and passing all tests Travis will attempt to push to heroku. You will need to generate your own API key and encrypt it in order to use Travis and Heroku in this way. This is done by running
```travis encrypt $(heroku auth:token) --add deploy.api_key --org```
for travis-ci.org or
```travis encrypt $(heroku auth:token) --add deploy.api_key --pro```
for travis.ci.com.

#### Database cleaning

You can truncate the database by running
```
heroku pg:reset DATABASE --confirm { name-of-your-app-here }
heroku run rails db:migrate
```
This will clear and reset the database to working condition. You must have the required rights on the heroku project in order to do this.

## Contributing  

If you would like to contribute to this project please begin by forking our repo. Once finished, open a PR describing what you have done.

Note: please make sure that your code adheres to our linting and code coverage (95%+) requirements. Travis will check to see if these requirements are met and will automatically fail the PR if they are not met.

If you notice any bugs please open an issue and we'll try to address it!
