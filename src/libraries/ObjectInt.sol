pragma solidity ^0.4.0;

library ObjectInt {

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

  function toString(uint self) internal pure returns (string memory) {
    if (self == 0) return "0";
    uint j = self;
    uint length;
    while (j != 0){
        length++;
        j /= 10;
    }
    bytes memory bstr = new bytes(length);
    uint k = length - 1;
    while (self != 0){
        bstr[k--] = byte(48 + self % 10);
        self /= 10;
    }
    return string(bstr);
  }

  function toString(address self) internal pure returns (string memory) {
    bytes memory b = new bytes(20);
    for (uint i = 0; i < 20; i++)
        b[i] = byte(uint8(uint(self) / (2**(8*(19 - i)))));
    return string(b);
  }

}
