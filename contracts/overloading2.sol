// 오버로딩 : 같은 이름으로 여려 역할을 담당하기 때문에 유연하게 사용 가능

// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract {

    function get(uint_fast) (public pure returns(uint)){
        return_fast;
    }

    function get(bool_fast) (public pure returns(uint)){
        return_fast;
    }

}

// 오버라이딩 : 확장 혹은 덮어쓰기 윈리이며, 부모 > 자식 유산 상속해주었아나 상속품을 새로 리셋 시키는 행위
contract Student{
    function major() public pure virtual(uint){
        return "Art";
    }
}

contract Mathstudent is Student{
    function major() public override returns (string memory){
        return "Math";
    }
}