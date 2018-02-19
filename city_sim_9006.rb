require_relative './location_node'

#srand(333) # Replace this with arg
srand(0) # Replace this with arg


def printBooks(totalBooks,driverNum)
  if(totalBooks[driverNum] == 1)
    puts "Driver "+(driverNum+1).to_s + " obtained " + totalBooks[driverNum].to_s +  " book!"
  elsif(totalBooks[driverNum] < 0)
    puts "Invalid number of Books"
  else
    puts "Driver "+(driverNum+1).to_s + " obtained " + totalBooks[driverNum].to_s +  " books!"
  end
end


def printToys(totalToys,driverNum)
  if(totalToys[driverNum] == 1)
    puts "Driver "+(driverNum+1).to_s + " obtained " + totalToys[driverNum].to_s +  " toy!"
  elsif(totalToys[driverNum] < 0)
    puts "Invalid number of Toys"
  else
    puts "Driver "+(driverNum+1).to_s + " obtained " + totalToys[driverNum].to_s +  " toys!"
  end
end



def printClasses(totalClasses,driverNum)
  if(totalClasses[driverNum] == 1)
    puts "Driver "+(driverNum+1).to_s + " attended " + totalClasses[driverNum].to_s +  " class!"
  elsif(totalClasses[driverNum] < 0)
    puts "Invalid number of Classes"
  else
    puts "Driver "+(driverNum+1).to_s + " attended " + totalClasses[driverNum].to_s +  " classes!"
  end
end


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
  else
    return false
  end
end


def incrementToy(loc)
  if(loc.name == "Museum")
    return true
  else
    return false
  end
end


def incrementClass(loc)
  if(loc.name == "Cathedral")
    return true
  else
    return false
  end
end


def startingPos(randomValue)
  if(!(randomValue).is_a?(Numeric))
    puts "Must enter a numerical value"
    return false
  end

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
totalClasses = [1,1,1,1,1]


#Create nodes for each location in the city

#Exit nodes
downTown = LocationNode.new("DownTown",nil,nil,nil,nil)

monroeville = LocationNode.new("Monroeville",nil,nil,nil,nil)



#4 buildings

hillMan = LocationNode.new("Hillman",nil,nil,nil,nil)

hospital = LocationNode.new("Hospital",nil,nil,nil,nil)

cathedral = LocationNode.new("Cathedral",nil,nil,nil,nil)

museum = LocationNode.new("Museum",nil,nil,nil,nil)




#Link buildings to each other

hillMan.node1 =  hospital
hillMan.node2 = downTown
hillMan.street1 = "Foo St."
hillMan.street2 = "Fifth Ave."

hospital.node1 =  cathedral
hospital.node2 = hillMan
hospital.street1 = "Fourth Ave."
hospital.street2 = "Foo St."

cathedral.node1 =  monroeville
cathedral.node2 = museum
cathedral.street1 = "Fourth Ave."
cathedral.street2 = "Bar St."

museum.node1 =  hillMan
museum.node2 = cathedral
museum.street1 = "Fifth Ave."
museum.street2 = "Bar St."


#Traverse city starting at hillman




driverNum = 0

while driverNum < 5

  #select starting location for driver at random

  r = rand
  puts "\nRandom number #{(r*100).to_i}"

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

  if(incrementClass(driver))
    totalClasses[driverNum] *= 2
  end

  #depending on whether rand is odd or even, decide what route to take

  print "Driver " + (driverNum+1).to_s +  " heading from "+ driver.name

  s1 = driver.street1
  s2 = driver.street2

  if((rand*100).to_i%2 ==0)
      driver = driver.node1
      puts " to " + driver.name + " via " + s1
  else
      driver = driver.node2
      puts " to " + driver.name + " via " + s2
  end

  end


#Output stats for simulation

  printBooks(totalBooks,driverNum)
  printToys(totalToys,driverNum)
  printClasses(totalClasses,driverNum)

  driverNum+=1
end





