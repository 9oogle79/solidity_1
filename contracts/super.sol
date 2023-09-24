// 상속받은 함수 로직을 갖고오는 super

// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Student {
    string[] internal courses;

    function showCourses() public virtual returns (string[] memory){
        delete courses;
        courses.push("English");
        courses.push("Music");
        return courses;
    }
}

contract ArtStudent is Student {
    function showCourses() public override returns (string[] memory){
        super.showCourses();
        courses.push("Art");
        return courses;
    }
}