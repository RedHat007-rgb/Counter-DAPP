// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Counter.sol";



contract TestCounter is Test {
    Counter c;

    function setUp() public {
        c = new Counter(100);
    }

    function testIncrement() public {
        c.increment();
        c.increment();
         c.increment();
        assertEq(c.viewNum(),103,"ok");
    }

    function testDecrement() public{
        c.decrement();
        c.decrement();
        c.decrement();
        assertEq(c.viewNum(),97,"ok");
    }
}
