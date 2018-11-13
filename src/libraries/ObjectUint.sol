pragma solidity ^0.4.0;

library ObjectUint {

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

}
