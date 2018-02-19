  require 'minitest/autorun'
  require_relative './city_sim_9006'

  class PrintToys_test < Minitest::Test

# UNIT TESTS FOR METHOD printStats(loc)

    def test_negative_items
      assert_output("Invalid number of Toys\n") { printToys([-1],0) }
    end

    def test_multiple_items
      assert_output("Driver "+1.to_s + " obtained " + 2.to_s +  " toys!\n") { printToys([2],0) }
    end

    def test_single_item
      assert_output("Driver "+1.to_s + " obtained " + 1.to_s +  " toy!\n") { printToys([1],0) }
    end

  end