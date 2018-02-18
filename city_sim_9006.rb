require_relative './location_node'

#srand(333) # Replace this with arg
srand(8) # Replace this with arg

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


def incrementBook(loc)
  if(loc.name == "Hillman")
    return true
  end
end

def incrementToy(loc)
  if(loc.name == "Museum")
    return true
  end
end

def startingPos(randomValue)

  if(((randomValue*100).to_i) <= 24)
    return "Hillman"
  elsif(((randomValue*100).to_i) >= 25 && ((randomValue*100).to_i) <= 49)
    return "Hospital"
  elsif(((randomValue*100).to_i) >= 50 && ((randomValue*100).to_i) <= 74)
    return "Cathedral"
  else
    return "Museum"

  end

end

#Create arrays to hold values for books and toys

totalBooks = [0,0,0,0,0]
totalToys = [0,0,0,0,0]


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

#select starting location at random



puts "STARTING POSITION IS: "+ startingPos(r)


case startingPos(r)
  when "Hillman"
    driver = hillMan

  when "Hospital"
    driver = hospital

  when "Cathedral"
    driver = cathedral

  when "Museum"
    driver = museum
end


driverNum = 0

while driverNum < 1


puts "Driver " + (driverNum+1).to_s +  " is starting at "+ driver.name + "\n\n"

#i = 0
while true

  #If driver is at monroeville or downtown, then end simulation
  if(checkIfAtEnd(driver))
    break
  end

  #Increment Book and Toy count for specific driver
  if(incrementBook(driver))
    totalBooks[driverNum]+=1
  end

  if(incrementToy(driver))
    totalToys[driverNum]+=1
  end

  #depending on whether rand is odd or even, decide what route to take

  print "Driver " + (driverNum+1).to_s +  " heading from "+ driver.name

  if((rand*100).to_i%2 ==0)
      #puts "Even, choosing node 1"
      driver = driver.node1
    else
      #puts "Odd, choosing node 2"
      driver = driver.node2
    end


    #puts "Driver " + (driverNum+1).to_s +  " is at " + driver.name
    puts " to " + driver.name



    #i+=1
  end


#Output stats for simulation

  if(totalBooks[driverNum] == 1)
    puts "Driver "+(driverNum+1).to_s + " obtained " + totalBooks[driverNum].to_s +  " book!"
  else
    puts "Driver "+(driverNum+1).to_s + " obtained " + totalBooks[driverNum].to_s +  " books!"
  end

  if(totalToys[driverNum] == 1)
    puts "Driver "+(driverNum+1).to_s + " obtained " + totalToys[driverNum].to_s +  " toy!"
  else
    puts "Driver "+(driverNum+1).to_s + " obtained " + totalToys[driverNum].to_s +  " toys!"
  end



  driverNum+=1
end





