[![Build Status](https://travis-ci.org/Thomascountz/lolli.svg?branch=master)](https://travis-ci.org/Thomascountz/lolli) [![Gem Version](https://badge.fury.io/rb/lolli.svg)](https://badge.fury.io/rb/lolli) 

# Lolli, beta. <img alt="lolli logo" src="https://raw.githubusercontent.com/thomascountz/lolli/master/assets/lolli_logo.png" align="right">

Lolli is a lightweight unit testing framework built for learning, currently in beta. 

Lolli's aim is to help introduce testing to developers by lowering the barrier-of-entry of more feature-rich fraimeworks.

In my experiece, due to the necessity of testing frameworks, which can be syntactically amorphic and DSL-heavy, the cognitive leap of learning testing in Ruby can be challenging. Lolli doesn't wish to replace these vital frameworks, but rather mimic their most basic behavior in order to shift the learning conversation towards the concepts of testing, rather than the tools to do it.

It should be doubly noted that Lolli is not fit for testing production code. After learning with Lolli, the hope is that making the transition to a more appropriate framework will be easier than having started with one in the first place.

To get started with, follow the installation and example usage sections below. 

More detailed documentation is forthcoming.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lolli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lolli

## Basic Usage

Create a new test file:

```
$ touch ./test_folder/example_test.rb
```

In that file, require Lolli:

```ruby
require 'lolli'
```

Open a new class that inherits from Lolli's `Example` class:

```ruby
class ExampleTest < Lolli::Example
```

You now have access to create Lolli `example` blocks. The structure looks like this:
```ruby
example "description" do
  expected = true
  actual = true
  assert_equals(expected: expected, actual: actual)
end
```
NOTE: `example` blocks must end with a matcher. 

To run the test, run the `ruby` command from the terminal with the path to your test file:
```
$ ruby ./test_folder/example_test.rb
```

The output should look like this:
```
description
  true
```

That's it!

A failing example might look like this:

```ruby
example "description" do
  expected = true
  actual = false
  assert_equals(expected: expected, actual: actual)
end
```

Which will output this:

```
$ ruby ./test_folder/example_test.rb
description
  false
    Expected: true
    Actual: false
```

## Example Usage

You can add multiple `example` blocks to a single test class:

```ruby
require 'lolli'

class ExampleTest < Lolli::Example
  example "it works!" do
    expected = 4
    actual = 2 + 2
    assert_equals(expected: expected, actual: actual)
  end

  example "it doesn't work." do
    expected = 4
    actual = 2 + 3
    assert_equals(expected: expected, actual: actual)
  end
end
```

Which will output:

```
$ ruby ./test_folder/example_test.rb
it works!
  true

it doesn't work.
  false
    Expected: 4
    Actual: 5
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/lolli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Lolli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/lolli/blob/master/CODE_OF_CONDUCT.md).
