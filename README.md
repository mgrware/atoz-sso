# AtozSso

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/atoz/sso`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'atoz_sso'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install atoz_sso

## Usage

    $ rails g atoz_sso:install

this will generating file in config/initializer/atoz_sso.rb and please set your configuration sso API

    AtozSso.configure do |config|
      #config.app_id = ENV['sso_app_id']
      #config.app_secret = ENV['sso_app_secret']
      #config.app_client_key = ENV['sso_client_key']
      #config.end_point = ENV['sso_endpoint']
    end


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/atoz-sso.
