gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../ch_01'

class WtfTest < Minitest::Test
  def test_everything
    result = <<~REPORT
    Rental Record for Josh Thompson
    	Jaws 2	3.5
    	Jaws 2	2
    Amount owed is 5.5
    You earned 2 frequent renter points
REPORT
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

    movie = Movie.new("Jaws 2", Movie::REGULAR)
    rental = Rental.new(movie, 3)
    customer = Customer.new("Josh Thompson")

    customer.add_rental(rental)

    movie_2 = Movie.new("Jaws 3", Movie::NEW_RELEASE)
    rental_2 = Rental.new(movie, 2)

    customer.add_rental(rental_2)

    assert_equal result, customer.statement
  end
end
