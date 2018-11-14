pragma solidity ^0.4.0;

import "./Object.sol";

contract Stringfy is Object {

  bool private _testeBool0 = false;
  bool private _testeBool1 = true;
  bool[] private _testeBool2;

  uint8 private _testeUint0 = 12;
  uint64 private _testeUint1 = 123;
  uint128 private _testeUint2 = 1234;
  uint256 private _testeUint3 = 12345;
  uint8[] private _testeUint4;
  uint256[] private _testeUint5;

  int8 private _testeInt0 = -12;
  int64 private _testeInt1 = 123;
  int128 private _testeInt2 = -1234;
  int256 private _testeInt3 = 12345;
  int8[] private _testeInt4;
  int256[] private _testeInt5;

  constructor() public {
    _testeBool2.push(true);
    _testeBool2.push(false);
    _testeBool2.push(true);
    _testeUint4.push(1);
    _testeUint4.push(12);
    _testeUint4.push(121);
    _testeUint5.push(11111);
    _testeUint5.push(22222);
    _testeUint5.push(33333);
    _testeInt4.push(-1);
    _testeInt4.push(12);
    _testeInt4.push(-121);
    _testeInt5.push(-11111);
    _testeInt5.push(22222);
    _testeInt5.push(-33333);
  }

  function getBooleans() public view returns
  (
    string memory,
    string memory,
    string memory
  ) {
    return (
        _testeBool0.toString(),
        _testeBool1.toString(),
        _testeBool2.toString()
        );
  }

  function getUints() public view returns
  (
    string memory,
    string memory,
    string memory,
    string memory,
    string memory,
    string memory
  ) {
    return (
        _testeUint0.toString(),
        _testeUint1.toString(),
        _testeUint2.toString(),
        _testeUint3.toString(),
        _testeUint4.toString(),
        _testeUint5.toString()
        );
  }

  function parseUints(string number) public pure returns(uint) {
    return ObjectUint.parseUint(number);
  }

  function getInts() public view returns
  (
    string memory,
    string memory,
    string memory,
    string memory,
    string memory,
    string memory
  ) {
    return (
        _testeInt0.toString(),
        _testeInt1.toString(),
        _testeInt2.toString(),
        _testeInt3.toString(),
        _testeInt4.toString(),
        _testeInt5.toString()
        );
  }

  function parseInts(string number) public pure returns(int) {
    return ObjectInt.parseInt(number);
  }

}
