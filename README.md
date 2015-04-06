# ToNil

Cast everything to nil!
Also, convert to nil only if not already nil.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mr_to_nil'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mr_to_nil

## Usage

```ruby
[:random, :array].to_nil # nil
31337.to_nil # nil
"Yet another shitty gem".to_nil # nil
"Your fat boss".to_nil # nil
nil.to_nil # nil

nil.to_nil? # nil
?0.to_nil? # nil
%w(nil).to_nil? # nil
/nil/.to_nil? # nil
```

## Contributing

0. Orly?!
1. Fork it ( https://github.com/mrThe/to_nil/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
