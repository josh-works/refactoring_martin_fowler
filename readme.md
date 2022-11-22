First 3 refactoring methods I learn:

- [ ] tbd
- [ ] tbd
- [ ] tbd

# Step 1

Get a copy if [Refactoring: Ruby Edition](https://www.amazon.com/Refactoring-Ruby-Addison-Wesley-Professional/dp/0321984137)

_type out_ the classes listed on page 2, 3, and 4.

Add them as a _single long file_, like so:

```ruby
class Movie
end

class Rental
end

class Customer

# other stuff

  def statement
  # other stuff
  end
end
```

It'll take me just a few minutes. You've already spent more time flipping through this book than the time you'll spend doing:

```
mkdir refactoring_in_ruby
cd ref[tab]

git init
hub create

$CODE_EDITOR_OF_CHOICE ch_01.rb
```

Boom. I use ZSH, and if I do `cmd+shift+e`, it toggles time-stamps on every terminal command you ever run.

IF YOU USE ZSH! ONLY IF YOU USE ZSH! try that keyboard combination, see if it works. NOW:

Time how long it takes from when you run the `mkdir` command to now, _after typing out the classes contained in this book.

> why must I type them, Josh

We're trying to get quick at slinging good code around here, ideally _at the speed we can type_, for so many reasons.

So, I'm doing this _right along with you_, as a bit of a spirit-guide and 'proof of concept'. Some of you might think I "know what I'm doing", or "have an idea how to write good code" or "am a minimally competant software developer" or "know fractionally more than an almost complete novice", and in many practical ways, the answer is "you're so wrong, so if I'm ever at a spot that you feel confident saying

> I want to be there too

you should listen to what I say"

anyway, that tells me I am at

and making the commit with the `sha` of:

```

```

[...]

oh yeah, did you already decide how you'll test this? I was thinking of something like:

```ruby
movie = Movie.new(args)
rental = Rental.new(args)
customer = Customer.new(args)
customer.statement
# return big long statement here
```

That's it, yeah?

So, NEXT! after writing all this shit in our code editor, we'll pick up this readme, and chapter 2.

psst:

```ruby
# pry -r ./ch_01.rb
movie = Movie.new("Jaws 2", "price_code")
=> #<Movie:0x000000010fb45428 @price_code="price_code", @title="Jaws 2">
rental = Rental.new(movie, 3)
=> #<Rental:0x000000010fb9b4b8 @days_rented=3, @movie=#<Movie:0x000000010fb45428 @price_code="price_code", @title="Jaws 2">>
customer = Customer.new("Josh Thompson")
=> #<Customer:0x000000010fbcafb0 @name="Josh Thompson", @rentals=[]>
customer.add_rental(movie)
=> [#<Movie:0x000000010fb45428 @price_code="price_code", @title="Jaws 2">]
customer.statement
NoMethodError: undefined method `movie' for #<Movie:0x000000010fb45428 @title="Jaws 2", @price_code="price_code">

      case element.movie.price_code
                  ^^^^^^
from /Users/joshthompson/personal/refactoring_martin_fowler/ch_01.rb:39:in `block in statement'
```

fuck. Well, I am only about 15 minutes into this. DO THIS YOURSELF! If you're reading, double your expected time, _but I think it'll be worth it_.
