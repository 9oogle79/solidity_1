// 반복문( for / while / do while )
// 초기식, 조건식, 증감식이 존재한다.

// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract event1{
    event Message(address indexed _from, address indexed _to, string message);
    function sendMessage(address _to, string calldata message)external {
        emit Message(msg.sender, _to, message);
    }
}