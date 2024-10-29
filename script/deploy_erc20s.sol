
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import {MyERC20} from "../src/test/MyERC20.sol";

contract Deploy is Script {
    function run() public {
        vm.startBroadcast();
        MyERC20 u1 = new MyERC20("UniTest1","Test1");
        MyERC20 u2 = new MyERC20("UniTest2","Test2");
        console.log("ERC20 contracts deployed at ", address(u1), "\n", address(u2));
        vm.stopBroadcast();
    }
}