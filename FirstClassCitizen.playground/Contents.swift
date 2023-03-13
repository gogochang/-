import Cocoa
/* - 일급객체 (First Class Citizen)
     1. 변수 또는 상수에 저장 및 할당을 할 수 있다.
     2. 전달 인자로 전달 할 수 있다.
     3. 반환 값으로 사용할 수 있다.
 */

// MARK: - 1. 변수 또는 상수에 저장 및 할당을 할 수 있다.

// 두개의 Int값을 받아 서로 더한 값을 Int값으로 반환하는 함수
func add(a: Int, b: Int) -> Int {
    return a+b
}

// add함수를 myFunc 상수에 저장 및 할당
let myFunc = add

print(myFunc(1,2))

// MARK: - 2. 전달 인자로 전달 할 수 있다.

// 클로저 1개, Int값 2개를 받아 Int를 반환
func calculate(op:(Int, Int) -> Int, a: Int, b: Int) -> Int {
    return op(a,b)
}

// myFunc와 1, 2를 받은 결과 값을 result 상수에 저장
let result = calculate(op: myFunc, a: 1, b: 2 )

//MARK: - 3. 반환 값으로 사용 할 수 있다.

// "(Int,Int) -> Int" 형식을 반환하는 getAddFunction()
func getAddFunction() -> (Int, Int) -> Int {
    return add
}
// getAddFunction()의 반환 값(add 함수)을 addFunction 상수에 할당
let addFunction = getAddFunction()
//  3,4 Int값을 전달 받아 더한 값을 result2 상수에 할당 (add함수)
let result2 = addFunction(3, 4) //7
