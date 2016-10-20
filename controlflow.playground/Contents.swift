
var todo = ["finish collections course", "buy groceries", "send emails", "order book online"]

for i in 0...3{
    print(todo[i])
}
for task in todo {
    print(task)
}

for number in 1...10{
    print("\(number) times 5 is equal to \(number * 5)")
}

/////////////
//While loop/
/////////////

var x = 0

while x <= 20{
 x++
    print(x)
}

var index = 0
while index < todo.count{

    index++
}

/////repeat while

var counter = 1

while counter < 10{
    print("Got in here")
    counter++
}

repeat{
    print("Got in counter again")
    counter++
}while counter < 1





