import Cocoa


// Closure와 함수의 비교
// 함수는 이름이 있는 closure


// 함수
func sumFunction(a: Int, b: Int) -> Int{
    return(a + b)
}

var sumResult: Int = sumFunction(a: 10, b: 20)
print(sumResult)


// Closure
// sumClosure는 변수
// 타입선언 : (Int, Int) -> Int 리턴해줄거 : (a: Int, b: Int) -> Int
// alert에서 사용
var sumClosure:(Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return a + b
}

sumResult = sumClosure(10,20)
print(sumResult)


// Guard
// if문과 비슷하다, 퍼포먼스가 if문 보다 좋다

func divide0(number: Int){
    if number == 0{
        print("0으로 나눌수 없습니다.")
    }else{
        let result = 100/number
        print(result)
    }
}

divide0(number: 0)
divide0(number: 10)


func divide1(number: Int){
    guard number != 0 else { // guard는 조건이 만족하면 바깥으로 실행
        print("0으로 나눌 수 없습니다")
        return
    }
    let result = 100/number
    print(result)
}

divide1(number: 0)
divide1(number: 100)


func doubleValue1(input: Int?) -> Int?{
    if let i = input{
        return i * 2
    }
    return nil
}

print(doubleValue1(input: 5)!)

func doubleValue2(input: Int?) -> Int?{
    guard let i = input else{return nil}
    return 1 * 2
}

print(doubleValue2(input: 5)!)


// Extension
// 구조체, 클래스, 열거형, 프로토콜 타입에 새로운 기능을 추가할 수 있다.

// Int에 extension을 적용하여 perperty 추가

extension Int{
    var isEven: Bool{
        return self % 2 == 0 //짝수인지
    }
    var isOdd: Bool{
        return self % 2 == 1 //홀수인지
    }
}

2.isEven
2.isOdd
var number: Int = 3
number.isEven

extension Int{
    func mutiply(by n: Int) -> Int {// 내부적으로는 n이라는 변수명 사용
        return self * n// self 들어오는 값
    }
}

3.mutiply(by: 3)
