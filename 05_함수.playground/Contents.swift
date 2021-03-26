import Cocoa


// 함수 : function

// integerSum라는 함수 생성
// func integerSum(a: a, b:b) -> c{
// a와 b로 받아서 c로 리턴한다
func integerSum(a: Int, b:Int) -> Int{
    return a + b
}


print(integerSum(a: 5, b: 5))


func greet(person: String) -> String{
    return person
}

print(greet(person: "Hello Anna")) // Hello Anna!
print(greet(person: "Hello Brian")) // Hello Brian!


// 파리미터가 없는 함수
func sayHelloWorld() -> String{
    return "Hello World!"
}

sayHelloWorld()


// 복수의 파라미터를 사용하는 함수
func greet1(person: String, alreadyGreeted: Bool) -> String{
    if alreadyGreeted {
        return ("Hello \(person), too.")
    }else{
        return("Hello \(person)")
    }
}
greet1(person: "Tim", alreadyGreeted: true)
greet1(person: "Brian", alreadyGreeted: false)


// 초기값과 변수명을 없애는 함수
// 외부적 변수는 zipCode 함수 내부적 변수는 postalCode 많이 사용하지는 않음
// 변수명: 타입? nil 데이터를 수용
func bulidAddress(_ name: String, address: String, city: String, zipCode postalCode: String, country: String? = "USA") -> String{
    return """
        \(name)
        \(address)
        \(city)
        \(postalCode)
        \(country ?? "")
    """
}



print(bulidAddress("John Doe", address: "5 Covington Square", city: "Birmingham", zipCode : "01234"))
print(bulidAddress("John Doe1", address: "5 Covington Square", city: "Birmingham", zipCode : "01234", country: "Korea"))
print(bulidAddress("John Doe2", address: "5 Covington Square", city: "Birmingham", zipCode : "01234", country: nil))


// 반환값의 없는 함수
// void는 선언하지 않아도 된다.
// return값은 Void가 기본이다.
func printHello(name: String) -> Void{
    print("\(name)님, 안녕하세요!")
}

printHello(name: "유비")

func printAndCount(string: String) -> Int{
    print(string)
    return string.count
}


func printWithouctCounting(string: String){
    let _ = printAndCount(string: string)
}

print(printAndCount(string: "Hello World!"))

printWithouctCounting(string: "히히")

// 가변 매개변수
// String...으로 friends값을 전부 받아옴
func sayHelloToFriends(me: String, friends: String...) -> String{
    return "Hello \(friends)! I'm \(me)"
}

print(sayHelloToFriends(me: "초선", friends: "손견","손첵","장양"))
print(sayHelloToFriends(me: "조조"))

// 복수의 값을 return 하는 함수

func getCountry() -> (dialCode: Int, isoCode: String, name:String){
    let country = (dialCode: 82, isoCode: "KR", name: "Korea")
    return country
}

print(getCountry())

// 배열중 최대값과 최소값을 return


func minMax(array: [Int]) ->(min: Int, max:Int){
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    return(currentMin, currentMax)
}


let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("minis \(bounds.min) and max is \(bounds.max)")
