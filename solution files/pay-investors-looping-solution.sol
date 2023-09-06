pragma solidity >= 0.7.0 < 0.9.0;

contract AddressWallets {
    uint fortune;
    
    address payable[] investorWallets; 
    
    mapping(address => uint) investors;
    
    
    
    function payInvestors(address payable wallet, uint amount) public {
        investorWallets.push(wallet);
        investors[wallet] = amount;
    }
    
    function payout() private {
        for(uint i =0; i<investorWallets.length; i++) {
            investorWallets[i].transfer(investors[investorWallets[i]]);
            
        }
    } 
    
        constructor() payable public {
            fortune= msg.value;
    }
    
    function makePayment() public {
                        payout();
    }


function checkInvestors() public view returns (uint) {
    return investorWallets.length;
}    
}
