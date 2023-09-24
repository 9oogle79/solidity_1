// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// uint public a = 5 가시성지정자 정의 방법

contract Ex_3{
    uint a = 3; // internal 가시성지정자 자동생성
    uint public b = 10;
    uint public constant c = 19;
    uint private d = 24;
}