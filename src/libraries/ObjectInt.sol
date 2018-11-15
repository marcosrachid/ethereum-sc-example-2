pragma solidity ^0.4.0;

library ObjectInt {

  function parseInt(string value) external pure returns (int) {
    bytes memory bytesValue = bytes(value);
    int ret = 0;
    int j = 1;
    for(uint i = bytesValue.length-1; i >= 0 && i < bytesValue.length; i--) {
        assert(bytesValue[i] >= 48 && bytesValue[i] <= 57);
        ret += (int(bytesValue[i]) - 48)*j;
        j*=10;
    }
    return ret;
  }

  function toString(int self) internal pure returns (string memory) {
    if (self == 0) return "0";
    int j = self;
    uint length;
    while (j != 0) {
        length++;
        j = j >> 4;
    }
    int mask = 15;
    bytes memory bstr = new bytes(length);
    uint k = length - 1;
    while (self != 0){
        int curr = (self & mask);
        bstr[k--] = curr > 9 ? byte(55 + curr ) : byte(48 + curr); // 55 = 65 - 10
        self = self >> 4;
    }
    return string(bstr);
  }

  function toString(int8[] self) internal pure returns (string memory) {
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

  function toString(int[] self) internal pure returns (string memory) {
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
