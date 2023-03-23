/* ################################################################
  - [ Struct ]
    1. 값 타입
    2. 상속 불가
    3. init() 자동 생성
    4. 프로퍼티 값 변경 불가 (mutating 사용하여 변경)
    5. 인스턴스가 상수(let)일 때 프로퍼티 값 변경 불가 (값 복사이기 때문에)
    6. 스택 영역에 저장
*/
struct PersonStruct {
    var name: String
    var age: Int
    
    //(3) init() 자동 생성으로 생략 가능
    
    //(4) 프로퍼티 값 변경 불가능하지만 mutating 사용하여 변경가능
    mutating func increaseAge() {
        age += 1
    }
}

var personStruct1 = PersonStruct(name: "henry", age: 20)
var personStruct2 = personStruct1

let personStruct3 = PersonStruct(name: "jason", age: 30)
//personStruct3.age = 11 //(5) 인스턴스가 상수(let)일 때 프로퍼티 값 변경 불가 (값 복사이기 때문에)

personStruct1.increaseAge()

// `personStruct1` 과 `personStruct2`는 다른 값이기 때문에 별개로 적용
print(personStruct1.age) // 21
print(personStruct2.age) // 20

/* ################################################################
  - [ Class ]
    1. 참조 타입
    2. 상속 가능
    3. init() 직접 생성
    4. 프로퍼티 값 변경 가능
    5. 인스턴스가 상수(let)일 때도 프로퍼티 값 변경 가능 (참조 복사이기 때문에)
    6. 힙 영역에 저장
    7. ARC(Automatically ref counted)로 관리
 */
class PersonClass {
    var name: String
    var age: Int
    
    // init()직접 구현해야됨
    init(name:String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // 프로퍼티 값 변경 가능
    func increaseAge() {
        age += 1
    }
}

var personClass1 = PersonClass(name: "henry", age: 20)
var personClass2 = personClass1

let personClass3 = PersonClass(name: "jason", age: 30)
personClass3.age = 11 //(5) 인스턴스가 상수(let)일 때 프로퍼티 값 변경 가능 (참조 복사이기 때문에)

personClass1.increaseAge()

//`personClass1`과 `personClass2`는 서로 같은값을 가르키는 참조 값이기 때문에 결과가 같음
print(personClass1.age) //21
print(personClass2.age) //21






