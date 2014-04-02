#Sample Short Links

##Setup Details

* Ruby version
> 2.1.0

* System dependencies
> Postgres
>
* Configuration
> Install RVM `\curl -sSL https://get.rvm.io | bash -s stable`
>
> Install ruby 2.1.0 `rvm install 2.1.0`
>
> Create Postgres Superuser `createuser -P -s -e bethel-short-links` (keep password blank)
>
> clone repo `git clone git@github.com:ewindso/sample-short-links.git`
>
> cd into root of project and type `bundle install`

* Database creation
> `rake db:create`

* Database initialization
> `rake db:migrate`
>

* How to run the test suite
> `rake`

* Deployment instructions
> Check heroku documentation