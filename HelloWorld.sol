// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/// @title Hello World
/// @notice Hello World implementation example with solidity
/// @dev This is a contract for learning

contract HelloWorld{
    string text;
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    /// @return Value of the string stored in the text variable 
    function helloWorld() public view returns(string memory){
       return text;
    }

    /// @param newText Text string that is going to replace the text variable
    function setText(string calldata newText) public onlyOwner{
        text = newText;
    }

    function transferOwnership (address newOwner) public onlyOwner {
        owner = newOwner;
    }

    modifier onlyOwner()
    {
        require (msg.sender == owner, "caller is not the owner");
        _;
    }

}