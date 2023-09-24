// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

// 오류처리 : assert / revert / require
// 예외처리 : try / catch

/* require, revert, assert를 호출하여 오류를 발생시킬 수 있다.
    1) require 는 실행 전에 입력 및 조건을 검증하는데 사용됨
    2) revert 는 require와 유사함
    3) assert는 절대 거짓이어서는 안되는 코드를 확인하는데 사옹됨.(false 실패한다는 것은 아마도 버그가 있다는 것을 의미함)
    4) 사용자 정의 오류를 사용하여 가스를 절약할 수 있음
*/



