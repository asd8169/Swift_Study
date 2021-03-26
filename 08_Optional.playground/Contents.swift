import Cocoa



// Optional
// : 값이 있을수도 있고, 없을 수도 있다.
// : nil값을 포함할 수도 있고, 안할 수도 있다.
// nil을 수용할수있는 변수와 아닌 변수로 나누자

// Optional을 수용하지 않는 변수
var constantNum = 100

//let optionalConstant = nil
// !,?로 표현가능 통상적으로는 !사용
let optionalConstant: Int! = nil
let optionConstant1: Int? = nil

var constantNum1: Int! = 100
print(constantNum1 + 10)

constantNum1 = nil

//constantNum1 + 1

switch constantNum1{
case .none:
    print("This optional value is null")
case .some(let value):
    print("value is \(value)")
}

// ------------
// ?를 !통해서 unwraping해주어야한다
var constantNum2: Int? = 100
print(constantNum2! + 10)

switch constantNum2 {
case .none:
    print("This optional value is null")
case .some(let value):
    print("value is \(value)")
}


// -------------

var myName2: String? = "James"
var yourName2: String? = nil

if let name = myName2, let friend = yourName2{
    print("\(name) and \(friend)")
}


yourName2 = "Cathy"
if let name = myName2, let friend = yourName2{
    print("\(name) and \(friend)")
}
