# test_my_functions.rb

require 'minitest/autorun'
require_relative 'broken_functions'

class TestMyFunctions < Minitest::Test
  def setup
    @bf = BrokenFunctions.new
  end

  def test_odd_even
    assert_output("Even number.\n") { @bf.odd_even(100) }
    assert_output("Odd number.\n") { @bf.odd_even(101) }
  end

  def test_is_prime
    assert_equal true, @bf.is_prime(101)
    assert_equal false, @bf.is_prime(100)
  end

  def test_find_longest_and_shortest_words
    words = ['banana', 'apple', 'pineapple', 'strawberry', 'orange', 'lime']
    res = @bf.find_longest_and_shortest_words(words)
    assert_equal 'lime', res[0]        # shortest word
    assert_equal 'strawberry', res[1]  # longest word
  end
end
