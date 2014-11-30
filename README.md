# FortuneCow

```
_______________________________________
/ For those who like this sort of       \
| thing, this is the sort of thing they |
\ like.                                 /
---------------------------------------
   \   ^__^
    \  (oo)\_______
       (__)\       )\/\
           ||----w |
           ||     ||
```

This stupid program is a Sinatra API combining [cowsay](http://www.nog.net/~tony/warez/) and [fortune](http://en.wikipedia.org/wiki/Fortune_(Unix)).

Credits to [ruby_cowsay](https://github.com/PatrickTulskie/ruby_cowsay) and [goldmine](https://github.com/Archetylator/goldmine).

### Documentation

The API is documented an free to use on [Mashape](http://www.mashape.com/thibaultcha/fortunecow).

### Requirements

- Ruby 2.0.0
- Bundler `$ gem install bundler`

### Install

```
$ bundle install
```

### Run

```
$ rackup
```

Starts locally on `http://localhost:9292`.

### Run the tests

```
$ bundle exec ruby spec/app.rb
```
