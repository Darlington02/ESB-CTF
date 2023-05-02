//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "forge-std/Test.sol";
import "../src/Level2.sol";

contract Level2Test is Test {
    LevelTwo public level2;

    function setUp() public {
        level2 = new LevelTwo();
    }

    function testSolution() public {
        uint[2][2] memory testArray1;
        testArray1[0] = [uint256(2), 3];
        testArray1[1] = [uint256(4), 5];

        uint[2][2] memory testArray2;
        testArray2[0] = [uint256(1), 3];
        testArray2[1] = [uint256(1), 5];
        
        uint[2][2] memory newArray;
        newArray[0] = [uint(3), 6];
        newArray[1] = [uint(5), 10];
        
        assertEq(level2.solution(testArray1, testArray2)[1][0], newArray[1][0]);
    }
}
