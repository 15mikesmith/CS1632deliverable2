require_relative './location_node'

r = rand
puts "Random number #{(r*100).to_i}"



def checkIfAtEnd(loc)

  if(loc.name == "Monroeville")
    puts "Driver exiting at Monroeville"
    return true

  elsif(loc.name == "DownTown")
    puts "Driver exiting at DownTown"
    return true

  else
    return false
  end

end


#Create nodes for each location in the city

#Exit nodes
downTown = LocationNode.new("DownTown",nil,nil)

monroeville = LocationNode.new("Monroeville",nil,nil)

#4 buildings

hillMan = LocationNode.new("Hillman",nil,nil)

hospital = LocationNode.new("Hospital",nil,nil)

cathedral = LocationNode.new("Cathedral",nil,nil)

museum = LocationNode.new("Museum",nil,nil)

#Link buildings to each other

hillMan.node1 =  hospital
hillMan.node2 = downTown

hospital.node1 =  cathedral
hospital.node2 = hillMan

cathedral.node1 =  monroeville
cathedral.node2 = museum

museum.node1 =  hillMan
museum.node2 = cathedral

#Traverse city starting at hillman

driver = hillMan

puts "Driver 1 is at "+ driver.name

i = 0
while true

  #depending on whether rand is odd or even, decide what route to take

  if((rand*100).to_i%2 ==0)
    puts "Even, choosing node 1"
    driver = driver.node1
  else
    puts "Odd, choosing node 2"
    driver = driver.node2
  end



  puts "Driver 1 is at " + driver.name

  if(checkIfAtEnd(driver))
    break
  end
  i+=1
end



