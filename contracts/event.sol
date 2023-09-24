// 반복문( for / while / do while )
// 초기식, 조건식, 증감식이 존재한다.

// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Array{
    // 배열을 초기화하는 여러 가지 방법
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];

    // 고정 크기 어레이, 모든 요소가 0으로 초기화됨
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint){
        return arr[i]; //배열 나열된 임의 값
    }

    //솔리디티 전체 배열 반환이 가능. 무한한 배열 확장이 가능
    function getArr() public view returns (uint[] memory){
        return arr;
    }

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop(); //배열에서 마지막 요소 제거: 이렇게 하면 배열 길이가 1 감소함
    }

    function getLength() public view returns (uint){
        return arr.length; // 길이 값
    }

    function remove(uint index) public {
        // 삭제해도 배열 길이는 변경되지 않음
        // 인덱스의 값을 기본값으로 재설정 함
        // 이 경우 0 으로 됨
        delete arr[index]; 
    }

    function examples() external {
        //메모리에 어레이 생성, 고정 크기만 생성할 수 있음
        uint[] memory a = new uint[](5);
    }
}