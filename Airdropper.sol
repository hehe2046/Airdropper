pragma solidity ^0.4.11;

import "./Ownable.sol";
import "./ERC20.sol";


contract Airdropper is Ownable {
    event TokenDrop( address receiver, uint amount);

    function multisend(address _tokenAddr, address[] dests, uint256[] values) onlyOwner {
        for (uint i = 0; i < dests.length; i++){
            ERC20(_tokenAddr).transfer(dests[i], values[i] );
            TokenDrop( dests[i], values[i]);
        }
    }
  
}

