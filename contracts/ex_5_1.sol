/* Getter 함수는 선언시 view나 pure 쓴다.
    View 함수는 상태를 읽을 수는 있지만 수정은 금지한다.
    Pure 함수는 상태를 읽거나 수정을 금지한다.
*/

// view가 적용된 함수

// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Ex5_2 {
    uint public a = 4;

    function myblock() public view returns (uint){
        uint b = a + 5;
        return b;
    }
}