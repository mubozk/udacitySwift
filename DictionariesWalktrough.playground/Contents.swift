/*
 Cities to add:
 Bangalore (India, Asia)
 Atlanta (USA, North America)
 Cairo (Egypt, Africa)
 Shanghai (China, Asia)
 */

import Foundation


/*
 Print the following
 1. A list of all cities in the USA in
 alphabetical order. Hint: use the array sorted() method
 2. All cities in Asia, in alphabetical
 order, next to the name of the country.
 In your output, label each answer with a number
 so it looks like this:
 1
 American City
 American City
 2
 Asian City - Country
 Asian City - Country
 */

// Your code goes here


var locations = ["North America" : ["USA" : ["Mountain View"]]]
locations["North America"]?["USA"]?.append("Atlanta")
locations["Asia"] = ["India" : ["Bangalore"]]
locations["Asia"]?["China"] = ["Shanghai"]
locations["Africa"] = ["Egypt" : ["Cairo"]]


let sortedLocations = locations["North America"]?["USA"]?.sorted()
for city in sortedLocations! {
    print(city)
}
// Atlanta
// Mountain View

var asiaCities = [String]()
for (country, cities) in locations["Asia"]! {
    let cityCountry = "\(cities[0]) - \(country)"
    asiaCities.append(cityCountry)
}
for city in asiaCities {
    print(city)
}
