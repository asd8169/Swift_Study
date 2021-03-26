import Cocoa

//swift에서는 Structure를 권장, ios는 Construct
// UI StoryBoard 드래그로 편하게 이용할수있으나 코드를 볼수없다.
// SwiftUI 코드를 편하게 볼수있지만 복잡하다, Structure를 사용
// 화면에 데이터를 주고받을때 사용한다
// 구조체 : Structure
// : 구조체는 Swift에서 Type을 정의한다


// Property and method

struct Sample{
    var sampleProperty: Int = 10
    let fixedSampleProperty: Int = 100
    static var typeProperty: Int = 1000
    
    func instanceMethod(){
        print("instance method")
    }
    static func typeMethod(){
        print("type method")
    }
}



// 구조체 사용
var samp: Sample = Sample()
samp.sampleProperty
samp.sampleProperty = 100
samp.sampleProperty
samp.fixedSampleProperty

// let이기 떄문에 값 할당불가
// samp.fixedSampleProperty = 1000

Sample.typeProperty
Sample.typeMethod()


// 학생 구조체
struct Student{
    var name = "Unknow"
    // class라는 변수를 사용하고 싶다면 ₩₩를 사용
    var `class`: String = "Swift"
    
    static func selfIntroduce(){
        print("학생 타입 입니다.")
    }
    
    func selfIntroduce(){
        print("저는 \(`class`)반 \(name)입니다.")
        
        // this에 개념 self
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student.selfIntroduce()

var student: Student = Student()
student.name = "James"
student.class = "스위프트"
student.selfIntroduce()

let cathy: Student = Student()
cathy.selfIntroduce()



//  ---------------------------

// Class
// : 구조체는 값 타입인 반면 클래스는 참조 타입
// Call by reference

class SampleC{
    
    var sampProperty: Int = 10
    let fixedSampProperty: Int = 100
    static var typeProperty: Int = 100
    
    
    func instanceMethod(){
        print("instance method")
    }
    static func typeMethod(){
        print("type method - class")
    }
    
}


// instance 생성


var sampC: SampleC = SampleC()
sampC.sampProperty = 200
sampC.sampProperty

let sampC2: SampleC = SampleC()
sampC2.sampProperty = 500

sampC.sampProperty
sampC2.sampProperty

sampC = sampC2
sampC.sampProperty
sampC2.sampProperty



class StudentC{
    var name: String = "unknown"
    // class라는 변수를 사용하고 싶다면 ₩₩를 사용
    var `class`: String = "Swift"

    static func selfIntroduce(){
        print("학생 타입 입니다.")
    }

    func selfIntroduce() { // 같은 이름이지만 용도가 다르기때문에 다른 메소드다
//        print("저는 \(`class`)반 \(name)입니다.")
        print("저는 \(self.class)반 \(name) 입니다.") // self = 자바의 this.

    }

}

StudentC.selfIntroduce()

// instance 생성
var studentC1: StudentC = StudentC()
studentC1.name = "James"
studentC1.class = "스위프트"
studentC1.selfIntroduce()

let cathyC:StudentC = StudentC()
cathyC.name = "Cathy"
cathyC.selfIntroduce()


// Class와 Stuct의 비교
// 필요에 따라서 사용
// Stuct
// value값을 따로가지고 데이터 공유는 하지않음
// Call by value
//
// Class
// Call by reference
struct ValueType{
    var property = 1
}

class ReferenceType{
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2
firstStructInstance.property
secondStructInstance.property
