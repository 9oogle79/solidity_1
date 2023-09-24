// 오버라이딩(overriding)

// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Lecture{
    function kind() public pure virtual returns (string memory) {
        return "Blockchain";
    }
} // 부모컨트렉트

contract DefiLecture is Lecture{
    function kind() public pure override returns(string memory) {
        return "Pool Contract";
    }
} // 자식컨트렉트

