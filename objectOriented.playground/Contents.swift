

let x1 = 0
let y1 = 0

let coordinate1: (x: Int, y: Int) = (0,0)
//structs can be uppercase camel
struct Point {
    let x: Int
    let y: Int
    
    init(x: Int, y: Int){
        self.x = x
        self.y = y
    }
    
    func surroundingPoints(withRange range: Int = 1)->[Point]
    {
        var results: [Point] = []
        for xCoord in (x-range)...(x+range){
            for yCoord in (y-range)...(y+range){
                let coordinatePoint = Point(x: xCoord, y: yCoord)
                results.append(coordinatePoint)
            }
        }
        return results
    }
}

let coordinatePoint = Point(x:4, y:4)


coordinatePoint.surroundingPoints()

class Enemy{
    
    var life: Int = 2
    let position: Point
    
    init(x: Int, y: Int){
        self.position = Point(x: x, y: y)
    }
    func decreaseHealth(factor: Int){
        life -= factor
    }
}

class Tower{
    
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int){
        self.position = Point(x: x, y: y)
    }
    func fireAtEnemy(enemy:Enemy){
        if(inRange(self.position, range: self.range, target: enemy.position)){
            while enemy.life > 0{
                enemy.decreaseHealth(self.strength)
                print("Enemy Vanquished")
            }
        } else {
            print("Enemy out of range")
        }
    }
    func inRange(position: Point, range: Int, target: Point)->Bool{
        
        let availablePositions = position.surroundingPoints(withRange: range)
        for point in availablePositions{
            if (point.x == target.x) && (point.y == target.y){
                return true
            }
        }
        return false
    }
}
// Super enemy is now identical to class Enemy//
///////////////////////////////////////////////
//SUB CLASS///////////
///////////////////
class SuperEnemy: Enemy{
    let isSuper: Bool = true
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 50
    }
    
}
//////////////////////
///Another SUBCLASS///
//////////////////////

class LaserTower: Tower{
    
    
    override init(x: Int, y: Int){
        super.init(x:x, y:y)
        self.range = 100
        self.strength = 100
    }
    override func fireAtEnemy(enemy: Enemy) {
        while enemy.life >= 0{
            enemy.decreaseHealth(strength)
        }
        print("Enemy Vanquished")
    }
}



let tower = Tower(x:0, y:0)
let enemy = Enemy(x:1, y:1)

let laserTower = LaserTower(x:0, y:0)



let superEnemy = SuperEnemy(x:20, y:20)
superEnemy.life

tower.fireAtEnemy(enemy)
laserTower.fireAtEnemy(superEnemy)
/////////////////////////////////////
//Another example of OOP with swift//
/////////////////////////////////////

class Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func getFullName() -> String {
        return "\(firstName) \(lastName)"
    }
}
class Doctor: Person{
    
    override func getFullName()->String{
        return "Dr. \(lastName)"
    }
}

let someDoctor = Doctor(firstName:"Sam", lastName:"Jenkins")
someDoctor.getFullName()

/////////////////////////////////////
//Another example of OOP with swift//
/////////////////////////////////////




struct Location {
    let latitude: Double
    let longitude: Double
}
class Business {
    let name: String
    let location: Location
    
    init(name: String, location: Location){
        self.name = name
        self.location = location
    }
}

let someBusiness = Business(name: "AOL", location: Location(latitude:12.4, longitude:19.0))


////////////////////////////
//Another example of OOP with swift//
/////////////////////////////////////

class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int){
        self.x = x
        self.y = y
    }
}


class Machine {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(direction: String) {
        print("Do nothing! Im a machine!")
    }
}

class Robot: Machine {
    override func move(direction: String) {
        switch direction {
        case "Up": location.y += 1
        case "Down": location.y -= 1
        case "Left": location.x -= 1
        case "Right": location.x += 1
        default: break
        }
    }
}
