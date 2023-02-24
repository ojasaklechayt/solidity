function s8(int8 x) pure suffix returns (uint) {}
function u8(uint8 x) pure suffix returns (uint) {}
function s16(int16 x) pure suffix returns (uint) {}
function u16(uint16 x) pure suffix returns (uint) {}
function s256(int x) pure suffix returns (uint) {}
function u256(uint x) pure suffix returns (uint) {}

contract C {
    function max() public pure {
        128 s8;
        256 u8;
        32768 s16;
        65536 u16;
        57896044618658097711785492504343953926634992332820282019728792003956564819968 s256; // 2**255
        115792089237316195423570985008687907853269984665640564039457584007913129639936 u256; // 2**256
    }
}
// ----
// TypeError 8838: (364-370): The number is out of range of type int8 accepted by the suffix function.
// TypeError 8838: (380-386): The number is out of range of type uint8 accepted by the suffix function.
// TypeError 8838: (396-405): The number is out of range of type int16 accepted by the suffix function.
// TypeError 8838: (415-424): The number is out of range of type uint16 accepted by the suffix function.
// TypeError 8838: (434-516): The number is out of range of type int256 accepted by the suffix function.
// TypeError 5503: (536-619): The literal is out of range of any supported integer type.
// TypeError 8838: (536-619): The number is out of range of type uint256 accepted by the suffix function.
