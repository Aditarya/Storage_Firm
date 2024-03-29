// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

//import "./TransStorage.sol";

contract StorageFirm {
    TransStorage[] public transStorageArray;

    function createTransStorage() public {
        TransStorage transStorage = new TransStorage();
        transStorageArray.push(transStorage);
    }

    function sfStore(uint256 _transStorageIndex, uint256 transStorageNumber) public {
        transStorageArray[_transStorageIndex].store(transStorageNumber);
    }
    function sfGet(uint256 _transStorageIndex) public view returns(uint256) {
        return transStorageArray[_transStorageIndex].retrieve();
    }
 
}
