pragma solidity >= 0.7.0 < 0.9.0;

contract AddressWallets {
    
    address payable[] investorWallets; 
    
    mapping(address => uint) investors;
    
    function payInvestors(address payable wallet, uint amount) public {
        investorWallets.push(wallet);
        investors[wallet] = amount;
    }

function checkInvestors() public view returns (uint) {
    return investorWallets.length;
}    
}
