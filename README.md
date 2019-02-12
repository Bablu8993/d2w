# D2w

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/d2w`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'd2w'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install d2w

## Usage
clone the gem into your local machin and go to that folder
on terminal run the following command with mobile_number

        d2w translate 2282668687
        
        2282668687 is phone no. translate into words
 Output for 2282668687
        
        [["act", "boo", "tots"], ["act", "boo", "tour"], ["act", "con", "tots"], ["act", "con", "tour"], ["act", "coo", "tots"], ["act", "coo", "tour"], ["bat", "boo", "tots"], ["bat", "boo", "tour"], ["bat", "con", "tots"], ["bat", "con", "tour"], ["bat", "coo", "tots"], ["bat", "coo", "tour"], ["cat", "boo", "tots"], ["cat", "boo", "tour"], ["cat", "con", "tots"], ["cat", "con", "tour"], ["cat", "coo", "tots"], ["cat", "coo", "tour"], ["act", "amounts"], ["act", "contour"], ["bat", "amounts"], ["bat", "contour"], ["cat", "amounts"], ["cat", "contour"], ["acta", "mounts"], ["catamounts"]]

Output for 6686787825

    [["mot", "opt", "puck"], ["mot", "opt", "ruck"], ["mot", "opt", "suck"], ["mot", "ort", "puck"], ["mot", "ort", "ruck"], ["mot", "ort", "suck"], ["not", "opt", "puck"], ["not", "opt", "ruck"], ["not", "opt", "suck"], ["not", "ort", "puck"], ["not", "ort", "ruck"], ["not", "ort", "suck"], ["oot", "opt", "puck"], ["oot", "opt", "ruck"], ["oot", "opt", "suck"], ["oot", "ort", "puck"], ["oot", "ort", "ruck"], ["oot", "ort", "suck"], ["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]

## Benchmark
   Runnig Benchmark for phone_no 2282668687
   
    Benchmark.measure{D2W::PhoneToWord.new.digit2word("2282668687")}
 Got Details
    
    #<Benchmark::Tms:0x00007f8051c38538 @label="", @real=1.1990008849970764, @cstime=0.0, @cutime=0.0, @stime=0.010602, @utime=1.172868, @total=1.18347>
    
 Runnig Benchmark for phone_no 2282668687   
 
    Benchmark.measure{D2W::PhoneToWord.new.digit2word("6686787825")}
    
 Got Details
 
       #<Benchmark::Tms:0x00007f8051c21388 @label="", @real=1.2247622689974378, @cstime=0.0, @cutime=0.0,   @stime=0.02586499999999997, @utime=1.18574, @total=1.211605>
       
## Development


After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/d2w.
