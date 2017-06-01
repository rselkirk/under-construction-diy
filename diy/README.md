# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
5.0.3

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the server
run elastic search server first: bin/elastic search
run rails server in second terminal: rails s -p 8080


* Run `bundle install` to install dependencies

* How to run the test suite
bundle exec rspec

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* Search set up
## First start with 'bundle install'
## Then install the new version of Java on your Vagrant 
## sudo apt-get install software-properties-common
## followed by 
## sudo add-apt-repository ppa:webupd8team/java

## then go to the elastic search side and download Elastic Search FILE 
## https://www.elastic.co/downloads/elasticsearch
## once that FILE is into your computer (it doesn't matter where you put the file)
## open another terminal and go to where you placed the elastic search files 

## type bin/elasticsearch to start the elastic search program
## elastic search will run on localhost:9200
## remember to KEEP that terminal open, thats the only way for elastic search to work.
## now try it out