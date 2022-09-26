// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/// @title Hello World
/// @notice Hello World implementation example with solidity
/// @dev This is a contract for learning

contract HelloWorld{
    string text;
    address deployer;

    constructor(){
        deployer = msg.sender;
    }

    /// @return Value of the string stored in the text variable 
    function helloWorld() public view returns(string memory){
       return text;
    }

    /// @param newText Text string that is going to replace the text variable
    function setText(string memory newText) public payable{
        text = newText;
    }

    function sample() public view returns (address){
        return deployer;
    }

}