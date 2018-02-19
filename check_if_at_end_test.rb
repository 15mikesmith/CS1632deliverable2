  require 'minitest/autorun'
  require_relative './city_sim_9006'

class CheckIfAtEnd_test < Minitest::Test

# UNIT TESTS FOR METHOD checkIfAtEnd(loc)
#   # Equivalence classes:
# x= Monroeville -> returns true
# x= DownTown -> returns true
# x= Hospital -> returns false
# x= Hillman -> returns false
# x= Cathedral -> returns false
# x= Museum -> returns false


  #If driver's lcoation is Monroeville, then return true
  def test_if_at_Monroeville
    testLocation = LocationNode.new("Monroeville",nil,nil,nil,nil)
    assert_equal true, checkIfAtEnd(testLocation)
  end


  #If driver's lcoation is Downtown, then return true
  def test_if_at_DownTown
    testLocation = LocationNode.new("DownTown",nil,nil,nil,nil)
    assert_equal true, checkIfAtEnd(testLocation)
  end

  #If driver's lcoation is not at Monroeville or Downtown, then return false
  def test_if_not_at_Monroeville_or_Downtown
    testLocation = LocationNode.new("Hospital",nil,nil,nil,nil)
    assert_equal false, checkIfAtEnd(testLocation)
  end

end