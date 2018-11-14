pragma solidity ^0.4.0;

library ObjectUint {

  function parseUint(string value) external pure returns (uint) {
    bytes memory bytesValue = bytes(value);
    uint ret = 0;
    uint j = 1;
    for(uint i = bytesValue.length-1; i >= 0 && i < bytesValue.length; i--) {
        assert(bytesValue[i] >= 48 && bytesValue[i] <= 57);
        ret += (uint(bytesValue[i]) - 48)*j;
        j*=10;
    }
    return ret;
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

  function toString(uint8[] self) internal pure returns (string memory) {
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

  function toString(uint[] self) internal pure returns (string memory) {
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
