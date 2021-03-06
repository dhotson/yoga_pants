# YogaPants

A lightweight ElasticSearch ruby gem.

## Goals

* Super light-weight, super flexible
* No DSL for queries; only hashes
* Bulk indexing
* Threadsafe
* Handle a list of servers and fallback to other ones
* A solid base to build more complex ES libraries on top of.

## Ruby compatibility

* 1.8.7
* 1.9.2
* 1.9.3
* rbx-18mode
* rbx-19mode
* ree

JRuby will probably be supported down the track when I allow other HTTP libraries since it's failing due to httpclient wanting openssl.

## Build status

[![Build Status](https://secure.travis-ci.org/chendo/yoga_pants.png)](http://travis-ci.org/chendo/yoga_pants)

## Installation

Add this line to your application's Gemfile:

    gem 'yoga_pants'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yoga_pants

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
