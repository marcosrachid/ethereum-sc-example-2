pragma solidity ^0.4.0;

import "./Object.sol";

contract Stringfy is Object {

  bool private _testeBool0 = false;
  bool private _testeBool1 = true;
  bool[] private _testeBool2 = [true, false, true];

  uint8 private _testeUint0 = 12;
  uint64 private _testeUint1 = 123;
  uint128 private _testeUint2 = 1234;
  uint256 private _testeUint3 = 12345;
  uint8[] private _testeUint4 = [1, 12, 121];
  uint256[] private _testeUint5 = [11111, 22222, 33333];

  int8 private _testeInt0 = -12;
  int64 private _testeInt1 = 123;
  int128 private _testeInt2 = -1234;
  int256 private _testeInt3 = 12345;
  int8[] private _testeInt4 = [-1, 12, -121];
  int256[] private _testeInt5 = [-11111, 22222, -33333];

  address private _testAddress0 = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;
  address private _testAddress1 = 0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C;
  address private _testAddress2 = 0x4B0897b0513fdC7C541B6d9D7E929C4e5364D2dB;
  address[] private _testAddress3 = [0x583031D1113aD414F02576BD6afaBfb302140225, 0xdD870fA1b7C4700F2BD7f44238821C26f7392148];

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

  function getAdresses() public view returns
  (
    string memory,
    string memory,
    string memory,
    string memory
  ) {
    return (
      _testAddress0.toString(),
      _testAddress1.toString(),
      _testAddress2.toString(),
      _testAddress3.toString()
    );
  }

}
