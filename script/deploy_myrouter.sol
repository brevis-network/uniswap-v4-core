
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import {MySwapRouter} from "../src/test/MySwapRouter.sol";
import {IPoolManager} from "../src/interfaces/IPoolManager.sol";

contract Deploy is Script {
    function run() public {
        vm.startBroadcast();
        MySwapRouter u = new MySwapRouter(IPoolManager(0x8C4BcBE6b9eF47855f97E675296FA3F6fafa5F1A));
        console.log("MySwapRouter contract deployed at ", address(u));
        vm.stopBroadcast();
    }
}