/* It's time for a loooooooping assignment! ;)

On the previous assignment your mission was to be able to run successful transactions to your investors by 
setting up their accounts and allocating funds. However, the bad news is that we weren't actually sending any real ether over - 
just amounts attached to nothing which is why we didn't see the accounts balances change. But now it's time to actually write in 
the functionality so that not only do our investors get added to the wallets with amounts; but those amounts equal real ether 
payouts because what's the point of getting amounts if you can't actually get the ether! $$$

So let's finish these thing properly with the power of for loops in Solidity!
Remember these assignments are optional and can be tough so if you get stuck please ask questions in the discord community! 

Exercise:
1. Create a constructor function which can allocate an initial payable value to the contract upon deplayment. 
2. Create a function called payout which explicity prohibits outside visibility in the strict sense. 
3. Write a for loop in the function that iterates over all the wallets of the investors.
4. While iterating through the wallets the loop should return a transfers of ethers equal to the amounts in each walet.
(hint: You need to transfer into the investorWallet by checking each investor address matched up to investorWallets of the index)
5. Write a function called makePayment which can then execute the payout function once deployed. 
6. Deploy the contract and test for successful transactions. (Hint: watch out for wei conversations!!)
7. Share your solution in the s#mart-contracts channel in our discord! 

Good luck! The investors are counting on you ;)

*/

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
