import Cocoa


var isCar = true
var isNew = true


if isCar, isNew {
    print("New Car~")
}


isNew = false
if isCar, isNew{
    print("New Car")
}else{
    print("Old Car")
}

// Unwrapping if문
// ? nill값 수용
let price: Double? = 5.99

// 강제적 Unwrapping
// Unwrapping ! 해준다 포장된 price값을 풀어준다
if price! > 5.0{
    print(price!)
}


// 조건형 Unwrapping

if let p = price, p>5.0{
    print(p)
}


// Switch 조건문

let personAge = 14
if personAge < 1{
    print("bady")
}else if personAge < 3{
    print("toddler")
}else if personAge < 13{
    print("gradscooler")
}else if personAge < 18{
    print("teen")
}else{
    print("adult")
}



// Swift switch는 break문이 default다

switch personAge {
case 0..<1:
    print("baby")
case 1..<3:
    print("toddler")
case 3..<5:
    print("preschooler")
case 5..<13:
    print("gradschooler")
case 13..<18:
    print("teen")
default: print("adult")
}


let someInteger = 352425434433333333
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101..<Int.max:
    print("over 100")
default:
    print("UnKnow")
}


let character: Character = "a"

switch character {
case "a","A":
    print("The letter A")
default:
    print("Not the letter A")
}

// Tuple 사용하기

let somePoint = (1,1)
switch somePoint {
case (0,0):
    print("\(somePoint) is at the origin.")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case(0, _):
    print("\(somePoint) os on the y-axis")
case(-2...2, -2...2):
    print("\(somePoint) os inside the box")
default:
    print("\(somePoint) is outside if the box")
}


// case에 where 조건 사용하기
let anotherPoint = (1, -1)
switch anotherPoint {
case let(x,y) where x == y:
    print("\(x), \(y) is on the line x == y")
case let(x,y) where x == -y:
    print("\(x), \(y) is on the line x == -y")
default: break
}



let countryName = "United States"
var countryCode = ""

if countryName == "United Kingdom"{
    countryCode = "GB"
}else if countryName == "Mexico"{
    countryCode = "MX"
}else if countryName == "Canda"{
    countryCode = "CA"
}else if countryName == "Spain"{
    countryCode = "ES"
}else if countryName == "United States"{
    countryCode = "US"
}else{
    countryCode = "??"
}

print("Country named '\(countryName)' has code \(countryCode)")

// 위의 소스를 enum과 switch로 사용

enum Countries: String{
    case uk = "United Kingdom"
    case mx = "Maxico"
    case ca = "Canada"
    case es = "Spain"
    case us = "United States"
    case unknown = ""
}

// nil 값이 들어오면 .unknown으로 받겠다
switch Countries(rawValue: countryName) ?? .unknown {
case .uk: countryCode = "GB"
case .mx: countryCode = "MX"
case .ca: countryCode = "CA"
case .es: countryCode = "ES"
case .us: countryCode = "US"
case .unknown: countryCode = "?"
}
