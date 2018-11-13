pragma solidity ^0.4.0;

library ObjectBool {

  function toString(bool self) internal pure returns (string memory) {
    if (self == true) return "true";
    else return "false";
  }

  function toString(bool[] self) internal pure returns (string memory) {
    string memory start = "[";
    string memory end = "]";
    string memory middle = "";
    for (uint i; i < self.length; i++) {
      if (i != self.length - 1)
        middle = string(abi.encodePacked(middle, toString(self[i]), ","));
      else
        middle = string(abi.encodePacked(middle, toString(self[i])));
    }
    return string(abi.encodePacked(start, middle, end));
  }

}
