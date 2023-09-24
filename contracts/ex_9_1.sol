// 반복문( for / while / do while )
// 초기식, 조건식, 증감식이 존재한다.

// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

//do while
//while
//for

contract Loop{
    uint[] public num;

    function doWhileLoop() public {
        uint x = 0;
        do{
            num.push(x*3);
            x++;
        }
        while(x !=5);
    }
}