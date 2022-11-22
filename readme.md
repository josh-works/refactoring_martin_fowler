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
6eb02c1
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
NoMethodError: undefined method `movie` for #<Movie:0x000000010fb45428 @title="Jaws 2", @price_code="price_code">

      case element.movie.price_code
                  ^^^^^^
from /Users/joshthompson/personal/refactoring_martin_fowler/ch_01.rb:39:in block in statement
```

fuck. Well, I am only about 15 minutes into this. DO THIS YOURSELF! If you're reading, double your expected time, _but I think it'll be worth it_.

# chunk 2

Did you take a break?

I did. This is at least two hours after the above chunk. I just let `undefined method movie on 'element'` percolate. Finished dinner. Went grocery shopping.

Re-read some of my book that I'm copying this from. Evaluated how good and bad myh over-all decision-making in life is. The normal stuff. Took a hit, had some wine. Thinking about dopamine.

Anyway, when you run `pry -r <file>` or `ruby <file>`, with the properly-formatted "interaction pattern" at the end of the file, you can _kinda_ TDD some stuff. A <this> poor man's minitest.

Having some trouble with `Movie.NEW_RELEASE` being legit.

> undefined method `NEW_RELEASE' for Movie:Class

I feel _so_ strongly that this is wrong, for a few reasons.

[http://arxiv-export-lb.library.cornell.edu/pdf/2011.08130](http://arxiv-export-lb.library.cornell.edu/pdf/2011.08130)


```ruby
# s**t I tried
movie = Movie.new("Jaws 2", "price_code")
movie = Movie.new("Jaws 2", "REGULAR")
movie = Movie.new("Jaws 2", REGULAR)

# what worked
movie = Movie.new("Jaws 2", Movie::REGULAR)
therefore:

movie = Movie.new("Jaws 2", Movie::Regular)
movie_1 = Movie.new("Jaws 2", Movie::NEW_RELEASE)
movie =_2 Movie.new("Jaws 2", Movie::CHILDRENS)

movie = Movie.new("Jaws 2", Movie::Regular)
```

So a simple version, and what I'm putting at the bottom of the file, hoping to get this first round of statement to print...

```ruby
# speculative, how I "should" have read the interaction pattern out of the book...
movie = Movie.new("Jaws 2", Movie::REGULAR)
rental = Rental.new(movie, 3)
customer = Customer.new("Josh Thompson")
customer.add_rental(rental)
customer.statement
# printed statement
```

Lets see if I'm right, 12 minutes into this session. (`cmd+shift+e` in Zsh)

hell yes. OK, this commit prints out exactly what I want:

```shell
$ ruby ch_01.rb
Rental Record for Josh Thompson
	Jaws 2	3.5
Amount owed is 3.5
You earned 1 frequent renter points
```

_upon this modest foundation, we shall build castles._

# Section 3

Did you taste the taste of luxury in your last accomplishment? Did you feel a thrill? If not, how traumatized on you? On a scale of 8-10, and you can go above 10?

Do the following:

```
```
