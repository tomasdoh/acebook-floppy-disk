# AceBook   [![Build Status](https://travis-ci.org/tomasdoh/acebook-floppy-disk.svg?branch=master)](https://travis-ci.org/tomasdoh/acebook-floppy-disk)

[Building a Facebook clone using Rails](https://aqueous-wave-77193.herokuapp.com/posts).

## Team members

* [Luisa Theodoro Paoliello](https://github.com/luisatheodoro)
* [Chris Gilbert](https://github.com/chrisjgilbert)
* [Cristopher Palacios](https://github.com/criszelaya24)
* [Kirill Zabrodin](https://github.com/kirillzabrodin)
* [Tomas Doherty](http://github.com/tomasdoh)

## User Stories

#### Authentication
```
As a user
So that I can connect with amigos
I want to sign up for Acebook
```
```
As a user
So that I can communicate with amigos
I want to log in to Acebook
```
#### Posts
```
As a user
So that I can see what my amigos are saying
I want to be able to see all the posts on Acebook
```
```
As a user
So that I can share my thoughts
I want to be able to create a post
```
```
As a user
So that I can change or remove anything I regret saying
I want to be able to update or delete my posts
```
```
As a user
So that I can see the latest updates from my amigos
The newest posts should appear first in my feed
```
```
As a user
So that I can express myself as much as I need to
I want to write long posts across multiple lines
```

## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> rails s # Start the server at localhost:3000
```


## Testing
#### Rubocop
`bundle` if not installed    
`rubocop` to run    

#### Test Coverage with Simplecov  
Coverage reports are generated every time RSpec tests are run. To view results:  
`bundle` if not installed    
`cd coverage`     
`open index.html`    

