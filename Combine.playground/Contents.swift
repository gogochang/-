import Combine
/* - Combine
     | Swift 언어로 비동기 이벤트 스트림을 처리하는 데 사용되는 프레임워크
     | 비동기적으로 데이터를 처리, 변환, 결합하는 데 사용
     | 이벤트 처리 코드를 중앙 집중화하고 중첩 클로저 및 규칙 기반 콜백과 같은 번거러운 기술을 제거
     | 코드를 더 쉽게 읽고 유지 관리할 수 있음
*/

// PublishSubject 생성
// 1. PassthroughSubject< Type, Error >()
// 2. Never는 Error를 리턴하지 않는다.
let subject = PassthroughSubject<String, Never>()

// Publisher 구독
// 1. subject(PassthroughSubject<String, Never>())를 ".sink"를 통해 구독!
// 2. subscription 이름의 상수에 저장!
let subscription = subject
    .sink(receiveValue: { value in
        print(value)
    })

// 이벤트 전송
// 1. "Hello"의 String을 ".send"를 통해 이벤트 전송!
// 2. "world"의 String을 ".send"를 통해 이벤트 전송!
// 3. Publisher인 subscription의 클로저부분(line19)의 print가 실행!
subject.send("Hello")
subject.send("world")

// 구독 취소
// 더이상 사용하지 않으면 subscription을 구독취소하여 자원낭비를 방지한다.
subscription.cancel()
