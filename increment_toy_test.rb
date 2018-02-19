require 'minitest/autorun'
require_relative './city_sim_9006'

class IncrementToy_test < Minitest::Test

# UNIT TESTS FOR METHOD incrementToy(loc)

#Test if incrmeentBook only incrmements count of toys at the correct location
#If the locationNode's name is Museum, then return true
  def test_for_museum
    testLocation = LocationNode.new("Museum",nil,nil,nil,nil)
    assert_equal true, incrementToy(testLocation)
  end

  #Test if incrmeentBook only incrmements count of toys at the correct location
  #If the locationNode's name is not Museum, then return false
  def test_for_not_museum
    testLocation = LocationNode.new("Hillman",nil,nil,nil,nil)
    assert_equal false, incrementToy(testLocation)
  end

end