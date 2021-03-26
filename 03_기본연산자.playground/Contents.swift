import UIKit

// Tuple을 사용한 할당 연산자
let (x1, y1) = (1,2)

print(x1, y1)

let (x2, y2) = (3,"Kim")
print(x2, y2)


// 사칙 연산자
print(1 + 2)
print(3 - 2)
print(4 * 3)
print(10 / 3)
print(10.0 / 3.0)
print(9 % 4)

// 단항 음수 연산자

let one = 1
let minusOne = -one
let plusOne = -minusOne
print(one, minusOne, plusOne)

//비교 연산자
1 == 1
2 != 1
1 > 2
1 >= 2
2 <= 1

let name = "world"
if name == "world"{
    print("Hello World!")
}else{
    print("I'm sorry \(name), but I don't recognize you.")
}


(1, "zebra") < (2, "apple")
(3, "apple") < (3, "bird")
(4, "dog") == (4, "dog")
("blue", -1) < ("purple", 1)

//비교대상이 아니다
//("blue", false) < ("purple", true)


// 삼항 조건 연산자
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
print(rowHeight)

// NIL 병합 연산자

let defaultColorName = "red"
var userDefinedColorName: String? // 이 값의 default값은 nil이다 <-- optional 변수

//userDefinedColorName 값이 nil값이면 defaultColorName값을 쓰겠다
var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)


userDefinedColorName = "green"
//userDefinedColorName 값이 nil값이면 defaultColorName값을 쓰겠다
colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)


// 범위 연산자

for i in 1...10{
    print(i)
}

// 1에서 10까지의 합 구하기

var total:Int = 0
for i in 1...100{
    print(i)
    total = total + i
}
print("1~100의 합계 : ",total)


for i in 1...9{
    for j in 2...9{
//        print("i\(i)")
//        print("j\(j)")
        print("\(j) * \(i) = \(i*j)", terminator: "\t")
    }
    print("")
}

// for문을 이용하여 인원번호와 이름 출력하기(인원번호는 1번부터)
let names = ["Anna", "Alex", "Brian", "Jack"]

for i in 0..<names.count {
    print("Person \(i+1)\t\(names[i])")
}

// 배열을 다른 배열로 할당후 출력하기

let a1 = [-1, -2, -3, 0, 1, 2, 3]
let b1 = a1[2...]
print(b1)
print(b1.count)
print(a1[1])
print(b1[2]) // b1을 출력하고자 하면 a1의 길이와 순서에 맞추어야 출력됨.
print("-------")

for i in 2..<a1.count{
    print(b1[i])
}
print("=======")

let b2 = a1[...2]
let b3 = a1[..<2]


print(names)

for name in names[2...]{
    print(name)
}

for name in names[...2]{
    print(name)
    
}
print("=======")
for name in names[..<2]{
    print(name)
}
print("=======")

let range = ...5
print(range)
range.contains(7)
range.contains(4)
range.contains(-1)
range.contains(100)


// 논리 부정 연산자

let allowedEntry = false
if !allowedEntry {
    print(allowedEntry)
    print("Access denied!")
}


// 논리 곱 연산자

let enteredDoorCode = true
let passedRetinaScan = false

if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
}else{
    print("Access denied...")
}


if enteredDoorCode || passedRetinaScan {
    print("Welcome")
}else{
    print("Access denied...")
}
