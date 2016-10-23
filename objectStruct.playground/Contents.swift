

///value vs reference type///



struct User {
    var fullName: String
    var email: String
    var age: Int
    
    
    
    
}

var someUser = User(fullName: "Bob Barker", email: "bb@bb.com", age: 30)

var anotherUser = someUser

someUser.email = "aaa@aaa.com"
//notice that email of anotherUser is NOT the same

anotherUser.email

class Person {
    var fullName: String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int){
        self.fullName = name
        self.email = email
        self.age = age
    }
}

var somePerson = Person(name: "Tim Cook", email: "tim.cook@apple.com", age: 54)

var anotherPerson = somePerson

somePerson.email = "hackjob@apple.com"
//NOTICE that with init method email changes.
anotherPerson.email