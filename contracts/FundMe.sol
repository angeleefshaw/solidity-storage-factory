//SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract FundMe {

    //following the mapping syntax 'mapping(_KeyType => _ValueType) public mappingName'
    mapping(address => uint256) public addressToAmountFunded;

    //using the payble keyword here to indentify this function as a way to make payments
    function fund() public payable {
           
    }

}