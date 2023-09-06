// Decentralized Exchange:  On a smart contract traders can trade tokens - from the smart contract emit an event so
// they can get the data (web front moble)

// After emitting events you can't read them in the past only for entities outside the of the blockchain - not stored as memory 
// events have lower gas cost than  storage 

pragma solidity >= 0.7.0 < 0.9.0;

contract LearnEvents {
    // two steps - 1. declare event 2. emit event
    
    // index keywords help outside consumer filter 
    // you can only use indexed keyword makes ethereum more expensive to store so you can only use three
    
    // camelcase good convention - input field data structure 
    event NewTrade(
        uint indexed date,
        address indexed from, 
        address to,
        uint indexed amount 
        );
        
    function trade(address to, uint amount) external {
        // now is curent timestamp 
        // outside consumer can recieve event with web3js 
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }
}


