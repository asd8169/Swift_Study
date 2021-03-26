import Cocoa



/*
 
 Collection : 여러 값들을 묶어서 하나의 변수로 사용
 Swift에 Array는 자바의 ArrayList
 
 Array : 순서가 있는 리스트 컬렉션
 Dictionary : Key와 Value의 쌍으로 이루어진 collection
 set : 순서가 없고 멤버는 유일한 값으로 구성
 
 */


// Array
// Empty Int Array 생성

// 가장 기본적인 Array선언 표현 방법
var intVariable: Array<Int> = Array<Int>()
//1이라는 데이터 추가, 뒤에서 부터 붙음
intVariable.append(1)

intVariable.append(10)
intVariable.append(100)
intVariable.append(Int(100.1))
print(intVariable)
// 100이라는 데이터가 Array에 있는지
intVariable.contains(100)
intVariable.contains(99)

// 0번쨰 출력
intVariable[0]
// 0번쨰부터 1번째까지 출력
intVariable[0...1]
intVariable.remove(at: 0)
intVariable[0]
// Array에 개수 세기
intVariable.count

// Array에 맨마지막 제거
intVariable.removeLast()
intVariable

// Array 전부 제거
intVariable.removeAll()
intVariable
intVariable.count

// Array에 return할게 없을 때 뜨는 에러
// EXC_BAD_INSTRUCTION
// intVariable[0]

/*
 여러가지 Array 선언
 */
// empty Double Array 생성
// 가장 기본적인 Array선언 표현 방법
// var doubleVariable: Array<Double> = Array<Double>()
// Array는 [] Array<Double> == [Double]
// var doubleVariable: Array<Double> = [Double]()
// var doubleVariable: [Double] = [Double]()
var doubleVariable: [Double] = []
// 가장 많이 사용
var intVariable2: [Int] = [] // famous rule for making array
var intVariable6 = [Int]()

// 배열에 초기값을 넣어 생성하기
let intVariable3: [Int] = [1,2,3]
let intVariable4 = [1,2,3]
let intVariable5 = ["안녕","하세요"]

// 빈 배열을 생성
var someInts:[Int] = []
print("someInts os pf type [Int] with \(someInts.count) items")

// 배열에 3을 추가
someInts.append(3)
print("someInts os pf type [Int] with \(someInts.count) items")

// 배열 초기화
someInts = []
print("someInts os pf type [Int] with \(someInts.count) items")

// 기본값으로 설정된 배열 생성하기
var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

// 배열 합치기
var sixDoubles = threeDoubles + anotherThreeDoubles
print(sixDoubles)

// 문자를 이용한 배열의 생성
var shoppingList: [String] = ["Eggs","Milk"]
shoppingList

// 문자열 배열의 출력

for i in 0..<shoppingList.count{
    print(shoppingList[i])
}

// isEmpty 배열이 비어있는지 확인

if shoppingList.isEmpty{
    print("The shopping list is empty")
}else{
    print("The shopping list is not empty")
}

// 배열에 데이터 추가
shoppingList.append("Four")
print(shoppingList.count, shoppingList)

shoppingList += ["Banking","Powder"]
print(shoppingList.count, shoppingList)

shoppingList += ["Chocolate Spred","Cheese","Butter"]
print(shoppingList.count, shoppingList)

// 배열의 특정 위치 데이터 변경 및 삭제
// 배열의 길이를 4~6으로 잡고 데이터를 2개만 변경하면 배열 순서상으로 1개는 삭제된다.
shoppingList[4...6] = ["Bananas","Apples"]
print(shoppingList.count, shoppingList)


// 배열의 특정 위치 데이터 추가, 삭제, 변경

shoppingList.insert("Maple Syrup", at: 0)
print(shoppingList.count, shoppingList)

let mapleSyrup = shoppingList.remove(at: 0)
print(mapleSyrup, shoppingList.count, shoppingList)


// 배열의 값과 인덱스가 필요한 경우
for (index, value) in shoppingList.enumerated(){
    print("Iteml \(index + 1) : \(value)")
}


// Dictionary
// 기본 표현 방식
// var stringDictionary: Dictionary<String, String> = [String:String]
// 간단한 표현 방식
// 입력되는 순서는 key값이기 떄문에 자기마음대로 들어간다
var stringDictionary: [String: String] = [:]

stringDictionary["name"] = "유비"
stringDictionary["name1"] = "관우"
stringDictionary["name2"] = "장비"
stringDictionary["a"] = "초선"

print(stringDictionary)

var scoreDictionary: [String: Int] = [:]
scoreDictionary["유비"] = 100
scoreDictionary["관우"] = 90
scoreDictionary["장비"] = 80
print(scoreDictionary)

var anyDictionary: [String: Any] = [:]
anyDictionary["somekey"] = "value"
anyDictionary["anotherKey"] = 100
print(anyDictionary)

// key에 해당하는 값 변경
anyDictionary["somekey"] = "dictionary"
anyDictionary

// key에 해당하는 값 제거
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary
anyDictionary["somekey"] = nil
anyDictionary

// set
// set은 동일한 데이터가 있으면 하나만 들어간다
// 입력되는 순서는 자기마음대로 들어간다
var integerSet: Set = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(100)
integerSet.insert(99)
integerSet

// 데이터가 Array에 있는지 확인
integerSet.contains(1)
integerSet.contains(10)


// Set데이터 지우기
integerSet.remove(100)
integerSet


// 배열 문자를 이용한 Set 생성
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
print(favoriteGenres.count, favoriteGenres)

// 이 형식을 많이 사용
var favoriteGenres1: Set = ["Rock", "Classical", "Hip hop"]
print(favoriteGenres.count, favoriteGenres)


// Set 데이터 추가
favoriteGenres.insert("Jazz")
favoriteGenres


// 삭제
// remove 값이 있으면 ture, 없으면 false
// remove 값이 ture면 Im over it 출력 아니면 I naver much cared for that 출력
if let removedGenre = favoriteGenres.remove("Rock"){
    print("\(removedGenre) Im over it.")
}else{
    print("I naver much cared for that.")
}


// 숫자와 집합 계산할떄 유용하게 사용하는 Set

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigits: Set = [2,3,5,7]

// 합집합 oddDigits와 evenDigits의 합집합, sorted: 정렬
oddDigits.union(evenDigits).sorted()


// 교집합 oddDigits와 singleDigits의 교집합, sorted: 정렬
oddDigits.intersection(evenDigits)
oddDigits.intersection(singleDigits).sorted()


// 차집합 oddDigits와 singleDigits의 차집합, sorted: 정렬
oddDigits.subtracting(singleDigits)


// 여집합 oddDigits와 singleDigits의 여집합, sorted: 정렬
oddDigits.symmetricDifference(singleDigits).sorted()


// Set의 멤버쉽과 동등 비교

let houseAnimal: Set = ["dog","cat"]
let farmAnimal: Set = ["dog","cat"]
let cityAnimal: Set = ["duck","rabbit"]


// houseAnimal은 farmAnimal의 부분집합이다 true
// [A.isSubset(of:B) : A가 B의 부분집합인지 -> true/false 반환]
houseAnimal.isSubset(of: farmAnimal)

// farmAnimal은 houseAnimal의 모집단이다 true
// [B.isSuperset(of:A) : B가 A의 상위 집합인지 -> true/false]
farmAnimal.isSuperset(of: houseAnimal)

// farmAnimal과 cityAnimal의 교집합이 없을 때 true
//isDisjoint(with:) : 두 집합 사이에 어떤 공통 값이 없을 때 true, 하나라도 있으면 false반환
farmAnimal.isDisjoint(with: cityAnimal)
