/* Getter 함수는 선언시 view나 pure 쓴다.
    View 함수는 상태를 읽을 수는 있지만 수정은 금지한다.
    Pure 함수는 상태를 읽거나 수정을 금지한다.
*/

// view & pure

// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract ViewAndPure {

    uint public x = 1;

    // 상태를 수정 X , 읽기 O
    function addToX(uint y) public view returns (uint) {
        return x + y ;
    }

    // 상태를 수정 X , 읽기 x
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }

}