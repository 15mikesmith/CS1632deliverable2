require 'minitest/autorun'
require_relative './city_sim_9006'

class StartingPos_test < Minitest::Test

  # UNIT TESTS FOR METHOD startingPos(x)
  # Equivalence classes:
  # x= -INFINITY..-1 -> returns Hillman
  # x= 0..24 -> returns Hillman
  # x= 25..49 -> returns Hospital
  # x= 50..74 -> returns Cathedral
  # x= 75..INFINITY -> returns Museum
  # x= (not a number) -> returns false

  # If a value between -INFINITY and 0 is given for x, then returns Hillman
  def test_startingPos_negative
    assert_equal "Hillman", startingPos(-0.01)
  end

  # If a value between 0 and 24 is given for x, then returns Hillman
  #EDGE CASE
  def test_startingPos_24
    assert_equal "Hillman", startingPos(0.24)
  end

  # If a value between 25 and 49 is given for x, then returns Hospital
  #EDGE CASE
  def test_startingPos_49
    assert_equal "Hospital", startingPos(0.49)
  end

  # If a value between 50 and 74 is given for x, then returns Cathedral
  #EDGE CASE
  def test_startingPos_74
    assert_equal "Cathedral", startingPos(0.74)
  end

  # If a value 75 or greater is given for x, then returns Museum
  def test_startingPos_greater_than_75
    assert_equal "Museum", startingPos(1)
  end

  # If a non-numeric value is given for x, then returns false
  def test_startingPos_non_numeric_value
    assert_equal false, startingPos("A")
  end

end