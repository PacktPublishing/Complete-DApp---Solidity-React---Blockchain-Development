pragma solidity ^0.5.0;

import './RWD.sol';
import './Tether.sol';

contract DecentralBank {
  string public name = 'Decentral Bank';
  address public owner;
  Tether public tether;
  RWD public rwd;

  address[] public stakers;

  mapping(address => uint) public stakingBalance;
  mapping(address => bool) public hasStaked;
  mapping(address => bool) public isStaking;

constructor(RWD _rwd, Tether _tether) public {
    rwd = _rwd;
    tether = _tether;
    owner = msg.sender;
}

  // staking function   
function depositTokens(uint _amount) public {

  // require staking amount to be greater than zero
    require(_amount > 0, 'amount cannot be 0');
  
  // Transfer tether tokens to this contract address for staking
  tether.transferFrom(msg.sender, address(this), _amount);

  // Update Staking Balance
  stakingBalance[msg.sender] = stakingBalance[msg.sender] + _amount;

  if(!hasStaked[msg.sender]) {
    stakers.push(msg.sender);
  }

  // Update Staking Balance
    isStaking[msg.sender] = true;
    hasStaked[msg.sender] = true;
}

  // unstake tokens
  function unstakeTokens() public {
    uint balance = stakingBalance[msg.sender];
    // require the amount to be greater than zero
    require(balance > 0, 'staking balance cannot be less than zero');

    // transfer the tokens to the specified contract address from our bank
    tether.transfer(msg.sender, balance);

    // reset staking balance
    stakingBalance[msg.sender] = 0;

    // Update Staking Status
    isStaking[msg.sender] = false;

  }

  // issue rewards
        function issueTokens() public {
            // Only owner can call this function
            require(msg.sender == owner, 'caller must be the owner');

            // issue tokens to all stakers
            for (uint i=0; i<stakers.length; i++) {
                address recipient = stakers[i]; 
                uint balance = stakingBalance[recipient] / 9;
                if(balance > 0) {
                rwd.transfer(recipient, balance);
            }
       }
       }
}