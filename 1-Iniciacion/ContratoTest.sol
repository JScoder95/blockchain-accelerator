// SPDX-License-Identifier: LPGL-3.0-only

// Version
pragma solidity 0.8.24;

// Contract
contract ContratoTest {

// Variables

// Numbers
uint256 num1 = 115792089237316195423570985008687907853269984665640564039457584007913129639935; // [0 - 2^256-1]
uint16 num2 = 256; // [0 - 2^256-1]
uint8 num3 = 127; // [-2^7 - 2^7-1]
uint result1 = num2 * num3;

// String
string palabra = "Hola Mundo";

// Booleans
bool test = true;
bool test2 = false;

// Array 
uint[5] arraytest = [1, 2, 3, 4, 5];

// Mapping 
mapping(address => uint256) example23;

// Structs 
struct Person {
    string name;
    uint256 age;
}


// Modifiers
modifier modificador1 {
    if(5 + 2 != 10) revert();
    _;
}


// Events
event Multiplicacion(uint256 result);



// Functions

//  word (function) + name + args +  visibility + modifiers + return value
//  Visibility:
        // - external
        // - internal
        // - public
        // - private

function multiplier(uint256 num1_, uint256 num2_) public modificador1 returns (uint256 result) {
    result = num1_ * num2_;

    emit Multiplicacion(result);
    return result;
}

}


