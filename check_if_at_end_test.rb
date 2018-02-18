  require 'minitest/autorun'
  require_relative './city_sim_9006'

class CheckIfAtEnd_test < Minitest::Test

# UNIT TESTS FOR METHOD incrementBook(loc)

  def test_if_at_Monroeville
    testLocation = LocationNode.new("Monroeville",nil,nil,nil,nil)

    assert_equal true, checkIfAtEnd(testLocation)
  end

  def test_if_at_DownTown
    testLocation = LocationNode.new("DownTown",nil,nil,nil,nil)
    assert_equal true, checkIfAtEnd(testLocation)
  end

  def test_if_not_at_Monroeville_or_Downtown
    testLocation = LocationNode.new("Hospital",nil,nil,nil,nil)
    assert_equal false, checkIfAtEnd(testLocation)
  end

end