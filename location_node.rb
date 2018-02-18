class LocationNode

  attr_accessor :name, :node1, :node2 , :street1 , :street2

  def initialize(name, node1, node2,street1,street2)
    @name = name
    @node1 = node1
    @node2 = node2
    @street1 = street1
    @street2 = street2
  end


end