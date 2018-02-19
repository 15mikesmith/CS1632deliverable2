
  require 'minitest/autorun'
  require_relative './city_sim_9006'

  class PrintClasses_test < Minitest::Test


    # UNIT TESTS FOR METHOD printClasses(x,y)
    # Equivalence classes:
    # x= -INFINITY..-1 -> output "Invalid number of Classes"
    # x= 0..INFINITY, not including 1 -> output "Driver "+ y.to_s + " attended " + x.to_s +  " classes!"
    # x= 1 -> output "Driver "+ y.to_s + " attended " + x.to_s +  " class!"

    # If a value between -INFINITY and -1 is given for x, then output "Invalid number of Classes"
    def test_negative_items
      assert_output("Invalid number of Classes\n") { printClasses([-1],0) }
    end

    # If a value between 0 and INFINITY is given for x, then output "Driver "+ y.to_s + " attended " + x.to_s +  " classes!"
    def test_multiple_items
      assert_output("Driver "+1.to_s + " attended " + 2.to_s +  " classes!\n") { printClasses([2],0) }
    end

    # If a value of 1 is given for x, then output "Driver "+ y.to_s + " attended " + x.to_s +  " class!"
    def test_single_item
      assert_output("Driver "+1.to_s + " attended " + 1.to_s +  " class!\n") { printClasses([1],0) }
    end

  end