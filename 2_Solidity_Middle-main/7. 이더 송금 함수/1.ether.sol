//이더 송수신 함수 전체 설명

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;


/** 
1) 이더리움 계정 (Account)
EOA (Externally Owned Account)= 외부 소유계정. 암호화폐 지갑을 통해 가능 (공개키/ 개인키)_ keccak-256(20바이트)
CA (Contract Account) = 배포시 생성,  트랜잭션을 준 사람의 주소,논스값을 해시화

//Global (전역 변수)
//Payable:  이더를 받으려면 써야, call함수는 예외 ,  주소형,함수 적용 가능(호출동시 이더 전송 가능),  예외 ERC20
//Msg.sender Address타입(주소형):  현재 호출한 메시지의 발신자(전화 건사람, 보내는 사람)
//Msg.value  uint(정수형): 메세지와 함꼐 전송된 웨이(이더)의 갯수, 토큰을 얼마나 받았는지(양,갯수)= 전송 금액
//address.balance: 현재 잔액(양)

//withDraw: 인출을 위한 단어 = Put Out 
//Deposit: 예치

2) 이더 송금을 위한 함수 = 이더를 보내는 3가지 방법 :  send, transfer, call =  address(자료형)의 멤버함수
  Payable(주로 함수,주소,생성자에 붙여서 사용)
  1.send:  2300 gas를 소비, 성공여부를 true 또는 false로 리턴한다 = address.send()
  2.transfer: 2300 gas를 소비, 실패시 예외((exception)에러를 발생(revert) = address.transfer()
  3. call: 특정 함수를 호출 가능. 이더 전송도 가능. = address.call()
           가변적인 gas 소비 (gas값 지정 가능), 성공여부를 true 또는 false로 리턴
            재진입(reentrancy)공격 위험성 있음, 2019년 12월 이후 call 사용을 추천. 

3)  이더를 받는 방법? = 이더 수신을 위한 함수 
                                                                                                                                                 
 1. payable 함수 : 상태변경성이 payable로 지정된 함수
함수를 호출할 때 이더(ether)를 함께 송금.
호출된 함수가 payable로 지정되면 이더(ether)를 수신할 수 있음  
 2. receive() external payable :  컨트랙트별 최대 하나의 이더 수신 함수 receive 허용, 특수 함수
 3. fallback() external payable : 함수 호출 조건이 만족되지 않을 경우 대신 실행되는 함수
    msg.data비어 있으면 receive()호출되고, 안비었을경우  fallback()호출됩니다.
    

    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
    */

//Msg.value & address.balance정의 방법

contract ex{
    function getBalance(address _address)public view returns (uint){
        return _address.balance; // 현재 잔액(양)
    }

    function getMsgValue() public payable returns (uint){
        return msg.value; //토큰을 얼마나 받았는지 (양, 갯수) = 전송 금액 (양)
    }
}

contract receiveEther{//수신-받다
    receive() external payable {}
    fallback() external payable {}
    function getBalance() public view returns (uint) {
        return address(this).balance; // 현재 잔액
}

contract SendEther {//발신 -보내다
    function sendViaTransfer(address payable _to) public payable{
         _to.transfer(msg.value);  //전송하는 토큰 양
    }
    function sendViaSend(address payable _to)public payable{
         bool sent = _to.send(msg.value);  // 보내기는 성공 또는 실패를 나타내는 부울 값을 반환합니다.
         require(sent, "Failed to send Ether");   // 이 기능은 이더넷 전송에 권장되지 않습니다.
    }
    function sendViaCall(address payable _to) public payable{
         (bool sent, bytes memory data) = _to.call{value: msg.value}("");
          require(sent, "Failed to send Ether");
      }
}
