// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract LevelTwo {
    function solution(uint256[2][2] calldata x, uint256[2][2] calldata y) external pure returns (uint256[2][2] memory finalArray) {
        uint256[2][2] memory sumArray;
        for(uint i = 0; i < x.length; i++){
            sumArray[i];
            for(uint j = 0; j < sumArray[i].length; j++){
                sumArray[i][j] = x[i][j] + y[i][j];
            }
        }
        return sumArray;
    }
}