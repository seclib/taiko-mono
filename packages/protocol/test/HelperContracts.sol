// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "../contracts/bridge/Bridge.sol";
import "../contracts/signal/SignalService.sol";
import "../contracts/common/ICrossChainSync.sol";

contract BadReceiver {
    receive() external payable {
        revert("can not send to this contract");
    }

    fallback() external payable {
        revert("can not send to this contract");
    }

    function transfer() public pure {
        revert("this fails");
    }
}

contract GoodReceiver {
    receive() external payable { }

    function forward(address addr) public payable {
        payable(addr).transfer(address(this).balance / 2);
    }
}

// NonNftContract
contract NonNftContract {
    uint256 dummyData;

    constructor(uint256 _dummyData) {
        dummyData = _dummyData;
    }
}

contract SkipProofCheckSignal is SignalService {
    function proveSignalReceived(
        uint64, /*srcChainId*/
        address, /*app*/
        bytes32, /*signal*/
        bytes calldata /*proof*/
    )
        public
        pure
        override
    {
    }
}

contract DummyCrossChainSync is EssentialContract, ICrossChainSync {
    Snippet private _snippet;

    function setSnippet(uint64 blockId, bytes32 blockHash, bytes32 stateRoot) external {
        _snippet.blockId = blockId;
        _snippet.blockHash = blockHash;
        _snippet.stateRoot = stateRoot;
    }

    function getSyncedSnippet(uint64 /*blockId*/ ) public view returns (Snippet memory) {
        return _snippet;
    }
}
