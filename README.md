# USNO

The base _USNO_ gem provides a namespace for other USNO::* gems.

## Installation

Add this line to your application's Gemfile:

    gem 'usno'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install usno

## Usage

Require the library/libaries you wish to use:

```ruby
require usno/imagery # For synthetic images of Earth and selected solar system bodies.
require usno/transit # For rise/set/transit times for major solar system bodies and selected bright stars
require usno/eclipse # For fetching solar/lunar eclipse information
```

## Contributing

1. Create another usno-* gem (must use or consume one of [USNO's data services](http://aa.usno.navy.mil/data/))
2. Create your feature branch, e.g. (`git checkout -b adds-usno-gemname`)
3. Commit your changes (`git commit -am 'Adds a new usno-* library'`)
4. Push to the branch (`git push origin adds-usno-gemname`)
5. Create new Pull Request
