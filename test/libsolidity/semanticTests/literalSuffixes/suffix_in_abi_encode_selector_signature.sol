function selectorSuffix(uint) pure suffix returns (bytes4) { return 0x12345678; }
function signatureSuffix(string memory) pure suffix returns (string memory) { return "f()"; }

contract C {
    function testEncodeWithSelector() public pure returns (bytes memory) {
        return abi.encodeWithSelector(1234 selectorSuffix);
    }

    function testEncodeWithSignature() public pure returns (bytes memory) {
        return abi.encodeWithSignature("abcd" signatureSuffix);
    }
}
// ----
// testEncodeWithSelector() -> 0x20, 4, 0x1234567800000000000000000000000000000000000000000000000000000000
// testEncodeWithSignature() -> 0x20, 4, 0x26121ff000000000000000000000000000000000000000000000000000000000
