

var temperature = 20

if temperature < 25 {
    print("Its getting chilly  I recommend wearing a jacket")
} else if temperature < 19 {
    print("Holy crap its cold")
} else if temperature >= 25 {
    print("I could get used to this")
    
    
}

let todo: [String:String] = ["Jamestown":"Battle", "Spotsylvania":"Battlefield"]
print(todo)

///SWITCH STATEMENT///

let airportCodes = ["GEG", "LAX", "IAD", "DCA", "LGW", "JFK"]

let airport = airportCodes[2]

switch airport{
    
    case "GEG": print("Spokane")
    case "LAX": print("Los Angelese international Airport")
    case "IAD": print("Dulles DC")
    
default: print("I dont know which city this airport is in")
}

for airport in airportCodes{
    switch airport{
    case "GEG": print("Spokane")
    case "LAX": print("Los Angelese international Airport")
    case "IAD": print("Dulles DC")
    case "LGW", "JFK": print("New York")
    
    default: print("I dont know which city this airport is in")

}
}

let num = 30

let fizz = num % 3
let buzz = num % 5

for i in 1...15{
    if i % 3 == 0 && i % 5 == 0{
       print("fizz buzz")
    } else if i % 3 == 0{
        print("fizz")
    } else if i % 5 == 0{
        print("buzz")
    }
}

//this is a random temperature

import Foundation

var randomTemperature = Int(arc4random_uniform(UInt32(150)))


switch randomTemperature {
    case 0..<32: print("forget clothes youre basically a popsicle")
    case 32..<55: print("Ok you can wear a sweater")
    case 55..<70: print("right here, this is the good weather")
    case 70..<85: print("ok now this is getting good")
    case 86..<125: print("what the hell way tooo hot")
default: print("YEAH Weather")
    
}

