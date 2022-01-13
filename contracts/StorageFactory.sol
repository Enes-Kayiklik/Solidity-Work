pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

// we can inherit by writing is SimpleStorage
contract StorageFactory /* is SimpleStorage */ {
    SimpleStorage[] public storageArr;

    function createSimpleStorageContract() public {
        storageArr.push(new SimpleStorage());
    }

    function sfStore(uint256 _index, uint256 _number) public {
        // get SimpleStorage from given index and call storeNumber function
        SimpleStorage(address(storageArr[_index])).storeNumber(_number);
    }

    function sfGet(uint256 _index) public view returns(uint256) {
        return SimpleStorage(address(storageArr[_index])).retrieve();
    }
}