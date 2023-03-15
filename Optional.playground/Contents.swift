import Cocoa
/* 옵셔널(Optional) 이란?
   - 값이 있을 수도 있고 없을 수도 있는 변수나 상수를 나타내는 데이터임.
   - 옵셔널은 데이터가 없는 nil 상태일 수 있음
   - 타입 뒤에 "?"를 사용하여 선언함.
*/

//MARK: - 1. "myOptionalString"이라는 String 타입을 옵셔널변수로 선언
var myOptionalString: String?

//MARK: - 2. "myOptionalString" 옵셔널 변수에 "Hello, World!" 문자열을. 할당
myOptionalString = "Hello, World!"

//MARK: - 3. "myOptionalString" 옵셔널 변수를 "if let"구문을 사용하여 옵셔널을 해제
// "myOptionalString"이 "nil"이 아니면 "unwrappedString"에 할당 후 if문 실행
if let unwrappedString = myOptionalString {
    // 할당받은 "unwrappedString" 문자열 출력
    print(unwrappedString)
// "myOptionalString"이 "nil" 이면 else 실행
} else {
    // 문자열 출력
    print("myOptionalString is nil.")
}
