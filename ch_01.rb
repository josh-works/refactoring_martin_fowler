class Movie
  REGULAR = 0
  NEW_RELEASE = 1
  CHILDRENS = 2

  attr_reader :title
  attr_accessor :price_code

  def initialize(title, price_code)
    @title, @price_code = title, price_code
  end
end

class Rental
  attr_reader :movie, :days_rented
  def initialize(movie, days_rented)
    @movie, @days_rented = movie, days_rented
  end
end

class Customer
  attr_reader :name
  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rental(arg)
    @rentals << arg
  end

  def statement
    total_amount, frequent_renter_points = 0, 0
    result = "Rental Record for #{@name}\n"
    @rentals.each do |element|
      this_amount = 0
      # determine amounts for each line
      case element.movie.price_code
      when Movie::REGULAR
        this_amount += 2
        this_amount += (element.days_rented - 2) * 1.5 if element.days_rented > 2
      when Movie::NEW_RELEASE
        this_amount += elements.days_rented * 3
      when Movie::CHILDRENS
        this_amount += 1.5
        this_amount += (element.days_rented - 3) * 1.5 if element.days_rented > 3
      end

      # add frequent renter points
      frequent_renter_points += 1

      # add bonus for a two day new release rental
      if element.movie.price_code == Movie::NEW_RELEASE &&  element.days_rented > 1
        frequent_renter_points += 1
      end
      # show figures for this rental
      result += "\t" + element.movie.title + "\t" + this_amount.to_s + "\n"
      total_amount += this_amount
    end

    # add footer lines
    result += "Amount owed is #{total_amount}\n"
    result += "You earned #{frequent_renter_points} frequent renter points\n"
    result
  end
end

# movie = Movie.new("Jaws 2", Movie::REGULAR)
# rental = Rental.new(movie, 3)
# customer = Customer.new("Josh Thompson")
# customer.add_rental(rental)
# puts customer.statement
#
# movie_2 = Movie.new("Jaws 3", Movie::NEW_RELEASE)
# rental_2 = Rental.new(movie, 2)
# customer.add_rental(rental_2)
# customer.statement


# the above is what I tried, all the rest will be modifications sorta-kinda hidden here
#
#
# WtfTest#test_everything [test/ch_01_test.rb:24]:
# --- expected
# +++ actual
# @@ -1,5 +1,5 @@
#  "Rental Record for Josh Thompson
#  \tJaws 2\t3.5
# -Amount owed is 3.5
# -You earned 1 frequent renter points
# -"
# +\tJaws 2\t2
# +Amount owed is 5.5
# +You earned 2 frequent renter points"
