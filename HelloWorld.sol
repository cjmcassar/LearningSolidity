// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/// @title Hello World
/// @notice Hello World implementation example with solidity
/// @dev This is a contract for learning

contract HelloWorld{
    string text;

    constructor(){
        text = pureText();
    }

    /// @return Value of the string stored in the text variable 
    function helloWorld() public view returns(string memory){
       return text;
    }

    /// @param newText Text string that is going to replace the text variable
    function setText(string memory newText) public payable{
        text = newText;
    }

    function pureText() public pure returns (string memory){
        return "Hello World";
    }

    function isPure() public view returns (bool _returnValue) {
        _returnValue = _isPure();
    }

    function restore() public returns (bool){
        require (! _isPure(), "HelloWorld: The value of text is already pure");
        _restore();
        return true;
    }

     function _isPure() internal view returns (bool _check){
        _check = keccak256(bytes(text)) == keccak256(bytes(pureText())); 
    }

    function _restore() internal {
        text = pureText();
    }
}