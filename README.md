# Parser::CliWrapper

This replaces '-' with STDIN like unix option, the example below:

```
$ cat Gemfile | ruby-parse-wrapped -
(begin
  (send nil :source
    (str "https://rubygems.org"))
  (send nil :gemspec))
```

This is pareparation:

```
$ cat Gemfile
source 'https://rubygems.org';

gemspec

$ ruby-parse Gemfile
(begin
  (send nil :source
    (str "https://rubygems.org"))
  (send nil :gemspec))
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'parser-cli_wrapper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install parser-cli_wrapper

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/sanemat/parser-cli_wrapper/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
