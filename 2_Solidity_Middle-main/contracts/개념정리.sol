개념 체크

주소형 타입은 20바이트
주소형 타입은 EOA,CA로 나뉜다.
EOA는 외부 소유계정이다.
CA는 컨트랙트 주소이다.
현재 전송된 잔액은 msg.value라고 한다.
현재 트랜잭션을 준 주소는 msg.sender로 알 수 있다.
이더를 보내는 함수는 무엇이다? transfer 함수

함수 call을 통해 이더를 보낼때 보내는 주소에 payble을 적용하지 않습니다.

함수 send를 통해 이더를 보낼때 보내는 주소에 payble을 적용해야한다.
함수 transfer를 통해 이더를 보낼때는 보내는 주소에 payble을 해야한다.

함수send는 2300gwei를 receive함수에 제공한다.
존재하지 않는 함수가 호출될때 Fallback함수가 대신 호출한다.
함수call은 외부 컨트랙트에 있는 함수를 호출할 수 있을까요? > 있다!
함수call은 이더를 보내면서 외부 컨트랙트의 함수를 호출할 수 있다!
함수 delegatecall은 이더를 보낼수 없다.
