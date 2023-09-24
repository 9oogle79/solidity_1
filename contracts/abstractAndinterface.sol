// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

//인터페이스와 추상화 실습

// 추상 컨드렉트 : 내부에 추상함수(추상 키워드)가 존재할 경우, 추상 컨트렉트라고 한다.
// -----------> 추상기능 제공 =  하나의 기능이 무조건 존재하는 함수
// 추상함수 : 함수의 이름과 입력 매개 변수 및 출력 매개 변수만 선언해 두고 내용은 없는 함수 (;) = 가상 키워드
// 추상 컨트렉트 = 추상 함수 + 비추상 함수 > 자체 기능이 존재할 수 있음

function name(x1.../* 입력 매개 변수 */) public virtual returns (y1.../* 출력 매개 변수 */) 

abstract contract Animal {
    function eat() public virtual returns (byte32); // 추상 함수
}

// 인터페이스 : 추상 계약과 유사하지만, 인터페이스 키워드 사용해 생성
// 기능은 없고, 구현만 가능 / 외부 유형만 가능 / 생성자를 가질 수 없음 / 상태변수도 가질 수 없음 / 열거형 구조체 사용 가능
// 내부의 모든 함수는 추상함수 이어야 함 / 

interface BankingSystem {
    function deposit (uint) returns (uint) // 예치 기능
    function withdraw (uint) returns (uint) // 인출 기능
    
}
