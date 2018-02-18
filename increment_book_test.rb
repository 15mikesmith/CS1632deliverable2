require 'minitest/autorun'
require_relative './city_sim_9006'

class IncrementBook_test < Minitest::Test

# UNIT TESTS FOR METHOD incrementBook(loc)

#If the locationNode's name is Hillman, then return true
  def test_for_hillman
    testLocation = LocationNode.new("Hillman",nil,nil,nil,nil)
    assert_equal true, incrementBook(testLocation)
  end

  #If the locationNode's name is not Hillman, then return false
  def test_for_not_hillman
    testLocation = LocationNode.new("Museum",nil,nil,nil,nil)
    assert_equal false, incrementBook(testLocation)
  end

end