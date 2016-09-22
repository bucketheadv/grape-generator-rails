# Grape::Generator::Rails
grape-generator-rails is a gem to generate api files in rails.

## Usage

```bash
rails g grape:install root [--version=v2] [--format=json]
```

This will do:

```
create  app/apis/api/root_api.rb
create  config/initializers/grape-generator-rails.rb
create  lib/tasks/grape_routes.rake
insert  config/routes.rb
```

Now, run:

```
rails g grape users [--version=v2]
```

This will do:

```
create  app/apis/api/v2/users_api.rb
insert  app/apis/api/root_api.rb
```

Now, you can write your api code in `app/apis/api/v2/users_api.rb`.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'grape-generator-rails', github: 'sven199109/grape-generator-rails'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install grape-generator-rails
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
