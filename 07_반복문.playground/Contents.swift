import Cocoa

var str = "Hello, playground"


let names = ["Anna", "Alex", "Brian", "jack"]

for name in names {
    print("Hello, \(name)!")
}


for (index, text) in names.enumerated(){
    print("The name at index \(index) is \(text)")
}

let numberOfLegs = ["spider":8, "ant":6, "cat":4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

let minutes = 60
let minuteInterval = 5

// 일정한 값만큼 증가 stride
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print(tickMark)
}




let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"


// fallthrough : switch문 내에서 사용가능하며 다음 case문으로 흘려보낼수 있다.
switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}

print(description)


// -------

var startIndex1 = 0
var endIndex1 = 100
var sum1 = 0

// : 이름 주기

gameLoop:while startIndex1 <= endIndex1{
    startIndex1 += 1
    sum1 += startIndex1
    if sum1 >= 50{
        break gameLoop
    }else{
        continue gameLoop
    }
}

print(sum1)
