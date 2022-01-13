pragma solidity >= 0.6.6 < 0.9.0;

contract FundMe {
    mapping(address => uint256) public addressToFund;
    function fund() public payable {
        addressToFund[msg.sender] += msg.value;
    }
}
