pragma solidity ^0.4.0;

library ObjectAddress {

  function toString(address self) internal pure returns (string memory) {
    bytes32 value = bytes32(uint256(self));
    bytes memory alphabet = "0123456789abcdef";

    bytes memory str = new bytes(51);
    str[0] = '0';
    str[1] = 'x';
    for (uint i = 0; i < 20; i++) {
        str[2+i*2] = alphabet[uint(value[i + 12] >> 4)];
        str[3+i*2] = alphabet[uint(value[i + 12] & 0x0f)];
    }
    return string(str);
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
