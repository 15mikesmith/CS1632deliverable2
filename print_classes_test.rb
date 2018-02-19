
  require 'minitest/autorun'
  require_relative './city_sim_9006'

  class PrintClasses_test < Minitest::Test

# UNIT TESTS FOR METHOD printStats(loc)

    def test_negative_items
      assert_output("Invalid number of Classes\n") { printClasses([-1],0) }
    end

    def test_multiple_items
      assert_output("Driver "+1.to_s + " attended " + 2.to_s +  " classes!\n") { printClasses([2],0) }
    end

    def test_single_item
      assert_output("Driver "+1.to_s + " attended " + 1.to_s +  " class!\n") { printClasses([1],0) }
    end

  end