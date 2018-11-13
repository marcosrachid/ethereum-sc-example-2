pragma solidity ^0.4.0;

import "./libraries/Object.sol";

contract Stringfy is Object {

  bool private _testeBool0 = false;
  bool private _testeBool1 = true;
  bool[] private _testeBool2;

  uint8 private _testeUint0 = 12;
  uint16 private _testeUint1 = 123;
  uint32 private _testeUint2 = 321;
  uint64 private _testeUint3 = 1234;
  uint128 private _testeUint4 = 4321;
  uint256 private _testeUint5 = 12345;

  int8 private _testeInt0 = 12;
  int16 private _testeInt1 = -123;
  int32 private _testeInt2 = 321;
  int64 private _testeInt3 = -1234;
  int128 private _testeInt4 = 4321;
  int256 private _testeInt5 = -12345;

  constructor() public {
    _testeBool2.push(true);
    _testeBool2.push(false);
    _testeBool2.push(true);
  }

  function getBooleans() public view returns
  (
    string testeBool0,
    string testeBool1
  ) {
    return (
        _testeBool0.toString(),
        _testeBool1.toString()
        );
  }

  function getUints() public view returns
  (
    string testeUint0,
    string testeUint1,
    string testeUint2,
    string testeUint3,
    string testeUint4,
    string testeUint5
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

  // function getInts() public view returns
  // (
  //   string testeInt0,
  //   string testeInt1,
  //   string testeInt2,
  //   string testeInt3,
  //   string testeInt4,
  //   string testeInt5
  // ) {
  //   return (
  //       _testeInt0.toString(),
  //       _testeInt1.toString(),
  //       _testeInt2.toString(),
  //       _testeInt3.toString(),
  //       _testeInt4.toString(),
  //       _testeInt5.toString()
  //       );
  // }

}
