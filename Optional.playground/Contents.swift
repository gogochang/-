import Cocoa
/* 옵셔널(Optional) 이란?
   - 값이 있을 수도 있고 없을 수도 있는 변수나 상수를 나타내는 데이터임.
   - 옵셔널은 데이터가 없는 nil 상태일 수 있음
   - 타입 뒤에 "?"를 사용하여 선언함.
*/

//MARK: - "myOptionalString"이라는 String 타입을 옵셔널변수로 선언
var myOptionalString: String?
myOptionalString = "Hello, World!"

//MARK: - 강제 언래핑 (Unconditional Unwrapping)
//var myOptionalString: String? = "Hello, World!"

// 강제 언래핑 하지 않은 옵셔널
print(myOptionalString) // result : Optional("Hello,World!")
// 강제 언래핑 사용
print(myOptionalString!) // result : "Hello,World!"

//myOptionalString = nil
//print(myOptionalString!) // Error

//MARK: - 옵셔널 바인딩 (Optional Binding)

if let myString = myOptionalString {
    // myOptional is not nil
    print(myString) // result : "Hello, World!"
} else {
    // myOptional is nil
    print("myOptional is nil!")
}

// guard let을 사용한 옵셔널 바인딩
func optional() {
    guard let myString = myOptionalString else { return }//myOptionalString is nil
    // myOptional is not nil
    print(myString) // result : "Hello, World!"
}



//MARK: - 옵셔널 체이닝 (Optional Chaining)
struct Car {
    var model: String?
    var Color: String
}

struct Person {
    var name: String
    var age: Int
    var car: Car?
    init(name: String, age: Int, carModel: String, color: String) {
        self.name = name
        self.age = age
        car = Car(model: carModel, Color: color)
    }
}

//  "henry"변수에 Person 옵셔널 타입 할당
var henry: Person? = Person(name: "henry", age: 10, carModel: "K5", color: "white")

//print(henry.car.model) // Error
print(henry?.car?.model) // result : Optional("K5")

// 옵셔널 체이닝 사용 x
if let henry = henry {
    if let car = henry.car {
        print(car.model)
    }
}

// 옵셔널 체이닝 사용 o
if let model = henry?.car?.model {
    print(model) // result : "K5"
}

//MARK: - 잠재적 언랩 옵셔널 (Implicity Unwrapped Optionals)

var myOptional: String!
myOptionalString = nil
print(myOptionalString) // result : nil

// 'myOptional'에 "Hello"문자열 할당
myOptional = "Hello"

// 'myOptionalString'은 옵셔널이기 때문에 일반타입의 변수에 할당하지 못함
//myString = myOptional // Error

// 단독 사용은 옵셔널로 출력
print(myOptional) // result : Optional("Hello")

// 접근 시 자동으로 언래핑
print(myOptional + "World!") // result : "HelloWorld"
