  require 'minitest/autorun'
  require_relative './city_sim_9006'

  class PrintToys_test < Minitest::Test


    # UNIT TESTS FOR METHOD printToys(x,y)
    # Equivalence classes:
    # x= -INFINITY..-1 -> output "Invalid number of Toys"
    # x= 0..INFINITY, not including 1 -> output "Driver "+ y.to_s + " obtained " + x.to_s +  " toys!"
    # x= 1 -> output "Driver "+ y.to_s + " obtained " + x.to_s +  " toy!"

    #Test to see whether printToys method handles an invalid number
    # If a value between -INFINITY and -1 is given for x, then output "Invalid number of Toys"
    def test_negative_items
      assert_output("Invalid number of Toys\n") { printToys([-1],0) }
    end

    #Test to see whether printToys method handles a value greater than 1
    # If a value between 0 and INFINITY is given for x, then output "Driver "+ y.to_s + " obtained " + x.to_s +  " toys!"
    def test_multiple_items
      assert_output("Driver "+1.to_s + " obtained " + 2.to_s +  " toys!\n") { printToys([2],0) }
    end

    #Test to see whether printToys method handles a single value equal to 1
    # If a value of 1 is given for x, then output "Driver "+ y.to_s + " obtained " + x.to_s +  " toy!"
    def test_single_item
      assert_output("Driver "+1.to_s + " obtained " + 1.to_s +  " toy!\n") { printToys([1],0) }
    end

  end