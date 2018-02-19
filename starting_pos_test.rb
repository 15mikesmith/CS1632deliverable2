require 'minitest/autorun'
require_relative './city_sim_9006'

class StartingPos_test < Minitest::Test

  # UNIT TESTS FOR METHOD startingPos(x)
  # Equivalence classes:
  # x= -INFINITY..-1 -> returns -x
  # x= 0..INFINITY -> returns x
  # x= (not a number) -> returns nil

  def test_startingPos_negative
    assert_equal "Hillman", startingPos(-0.01)
  end

  def test_startingPos_24
    assert_equal "Hillman", startingPos(0.24)
  end

  def test_startingPos_49
    assert_equal "Hospital", startingPos(0.49)
  end

  def test_startingPos_74
    assert_equal "Cathedral", startingPos(0.74)
  end

  def test_startingPos_greater_than_75
    assert_equal "Museum", startingPos(1)
  end

  def test_startingPos_non_numeric_value
    assert_equal false, startingPos("A")
  end

end