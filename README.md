[![Build Status](https://secure.travis-ci.org/CodeforAustralia/rerouteit.png)](http://travis-ci.org/CodeforAustralia/rerouteit?branch=master) [![Dependency Status](https://gemnasium.com/CodeforAustralia/rerouteit.svg)](https://gemnasium.com/CodeforAustralia/rerouteit) [![Test Coverage](https://codeclimate.com/github/CodeforAustralia/rerouteit/badges/coverage.svg)](https://codeclimate.com/github/CodeforAustralia/rerouteit) [![Code Climate](https://codeclimate.com/github/CodeforAustralia/rerouteit/badges/gpa.svg)](https://codeclimate.com/github/CodeforAustralia/rerouteit)

ReRoute It
==========

Code For Australia's version of the Code for America ReRoute It transport choices application.

## Introduction

Welcome to the ReRoute It project. Let's get started with a few details about the application.

### Frameworks/Tools Used

- Ruby on Rails 4.1.1
- Git / Git Flow
- PostgreSQL

#### Ruby on Rails

If you do not have your Ruby on Rails environment setup, you can follow the steps here:

[https://gorails.com/setup/osx/10.9-mavericks](https://gorails.com/setup/osx/10.9-mavericks)

or

[http://www.createdbypete.com/articles/ruby-on-rails-development-setup-for-mac-osx/](http://www.createdbypete.com/articles/ruby-on-rails-development-setup-for-mac-osx/)

#### Git Flow

For this application we will be using the Git Flow branching model. You can find information about it [here](http://nvie.com/posts/a-successful-git-branching-model/)

## High Level Specifications

A user can select two locations with routes being calculated for walking, running, cycling, bus, train, taxi, car.
For each travel mode, the following data should be calculated/displayed:
- Financial cost
- Time to destination
- Calories burned
- Carbon footprint
- A combination of travel modes can be selected by the user based on their preferences
- Map presented to show route options with modes of transport
- A points system - different points categories for each mode of transport taken

## Ready to contribute?

Great - Head over to contribution.md to get started!

## Resources

### Reference application
[https://github.com/CodeforAustralia/transpochoices](https://github.com/CodeforAustralia/transpochoices)

### Git Flow

[http://nvie.com/posts/a-successful-git-branching-model/](http://nvie.com/posts/a-successful-git-branching-model/)

### Data Sources
- Check the data folder for information provided by [Kinesis](http://www.kinesis.org/).
- Google Directions API for calculating distances and routes. https://developers.google.com/maps/documentation/directions/
