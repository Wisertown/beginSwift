// arrays and collections

var todo = ["finish collections course", "buy groceries", "send emails"]

todo.append("eat more cherries")

todo += ["order pants"]

let secondList = ["Mow the lawn"]

let firstTask = todo[2]

//inserting element precisely

todo.insert("Pay Bills", atIndex: 2)

todo.removeAtIndex(3)

todo.count

//////Dictionaries///////

var airportcodes: [String: String] = ["LGA": "La Guardia", "LAX": "Los Angeles", "GEG": "Spokane"]

airportcodes["LGA"]

airportcodes["LLL"] = "Lady Luckington"

print(airportcodes)

airportcodes.updateValue("MKultra" , forKey: "MkU")

print(airportcodes)

airportcodes["BSC"] = nil

airportcodes.removeValueForKey("MkU")

print(airportcodes)

// Dealing with Nonexistent data


