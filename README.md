# Toolbox

Personal gem I use to distill, collect, categorize and easily load useful code snippets. This gem is not public on 'rubygems', but you can easily install it using a github link.

## Installation

Add this line to your application's Gemfile:

    gem 'toolbox', github: 'dv/toolbox'

And then execute:

    $ bundle

## Usage

None of the code is loaded by default. Select which classes, snippets and extensions you want access to and manually add them in a require statement:

```ruby
require "toolbox/extensions/range"
require "toolbox/extensions/string"
require "toolbox/extensions/array"
require "toolbox/utils/deepstruct"
require "toolbox/network/wait_for_socket"
```

# Copyright

Most of the code is written by me, however sometimes I add code from other open source projects, stack overflow answers, or blog posts. These may have then been further edited by me. Wherever possible I link to the inspiration or source materials, and attribute the authors here.

# Changelog

v0.0.4 - 13/07/2015 - Added Array#start_with?
v0.0.3 - 29/03/2015 - Added String#colorless
v0.0.2 - 27/02/2015 - Added Network.wait_for_socket

## Authors

* David Verhasselt
* Andrea Pavoni (DeepStruct class)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
