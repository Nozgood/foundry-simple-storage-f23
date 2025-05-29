// SPDX-License-Idenfitier: MIT

pragma solidity 0.8.19;

import {Script} from "lib/forge-std/src/Script.sol";
import {SimpleStorage} from "src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        // startBroadCast is used to monitor on my local node what happens
        vm.startBroadcast();

        SimpleStorage simpleStorage = new SimpleStorage();

        vm.stopBroadcast();
        return simpleStorage;
    }
}
