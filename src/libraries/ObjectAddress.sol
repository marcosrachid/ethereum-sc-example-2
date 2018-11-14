pragma solidity ^0.4.0;

library ObjectAddress {

  function toString(address self) internal pure returns (string memory) {
    bytes memory b = new bytes(20);
    for (uint i = 0; i < 20; i++)
        b[i] = byte(uint8(uint(self) / (2**(8*(19 - i)))));
    return string(b);
  }

  function toString(address[] self) internal pure returns (string memory) {
    string memory start = "[";
    string memory middle = "";
    string memory end = "]";
    for (uint i; i < self.length; i++) {
      if (i != self.length - 1)
        middle = string(abi.encodePacked(middle, toString(self[i]), ","));
      else
        middle = string(abi.encodePacked(middle, toString(self[i])));
    }
    return string(abi.encodePacked(start, middle, end));
  }

}
