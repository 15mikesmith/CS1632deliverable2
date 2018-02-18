  require 'minitest/autorun'
  require_relative './city_sim_9006'

  class IncrementClass_test < Minitest::Test

# UNIT TESTS FOR METHOD incrementClass(loc)

#If the locationNode's name is cathedral, then return true
    def test_for_cathedral
      testLocation = LocationNode.new("Cathedral",nil,nil,nil,nil)
      assert_equal true, incrementClass(testLocation)
    end

#If the locationNode's name is not cathedral, then return false
    def test_for_not_cathedral
      testLocation = LocationNode.new("Hillman",nil,nil,nil,nil)
      assert_equal false, incrementClass(testLocation)
    end

  end