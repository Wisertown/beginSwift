//swift functions



//room 2

let secondLength = 14

let secondWidth = 8

let area2 = secondLength * secondWidth

func calculateArea(length: Int, width: Int) ->Int{


    
    let area = length * width
    
    return area
}
var room1 = calculateArea(10, width: 19)


func someFunction() -> Void{
    
}

func temperatureInFahrenheit(temperature: Double) -> Double{
    var temp = temperature * 9
    var tempra = temp / 5
    tempra += 32
    
    return tempra
}
print(temperatureInFahrenheit(15))

func concatenateStrings(a: String, b: String) ->String{
    return a + " " + b
}
concatenateStrings("Aaron", b: "Wise")


//Default Values calculate cost of carpet

func carpetCostCalculator(length length: Int, width:Int, carpetColor: String)-> (price: Int, carpetColor:String) {

    var price: Int
    
    let area = calculateArea(length, width: width)
    //gray carpet 1$ sq f
    //tan carpet 2$ sq f 
    //deep blue 4$ sq f
    switch carpetColor{
        case "grey","gray": price = area * 1
        case "tan": price = area * 2
        case "deep blue": price = area * 4
    default: price = area * 1
    }
    return (price, carpetColor)
    
}
let result = carpetCostCalculator(length: 10, width:20, carpetColor: "tan")

result.price
result.carpetColor

//scope function - scoping function

func countDownAndUp(var a: Int){
    var b = a
    
    while b >= 0 {
        b--
        a++
        print("a: \(a)")
        print("b: \(b)")
    }
}
var a = 20
countDownAndUp(a)

func getTowerCoordinates(location: String) -> (Double, Double) {
    
    var lat: Double = 0.0, lon: Double = 0.0
    
    switch location {
    case "Eiffel Tower": lat = 48.8582; lon = 2.2945
    case "Great Pyramid": lat = 29.9792; lon = 31.1344
    case "Sydney Opera House": lat = 33.8587;  lon = 151.2140
    default: return (0,0)
    }
    
    return (lat, lon)
}

