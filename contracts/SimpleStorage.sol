pragma solidity ^0.6.0;

contract SimpleStorage {

    struct People {
        uint256 number;
        string name;
    }
    // this will be 0
    uint256 public mNumber;
    People[] public personList;
    mapping(string => uint256) public map;

    function storeNumber(uint256 _number) public {
        mNumber = _number;
    }

    function retrieve() public view returns(uint256) {
        return mNumber;
    }

    function addPerson(string memory _name, uint256 _number) public {
        personList.push(People(_number, _name));
        map[_name] = _number;
    }
}
