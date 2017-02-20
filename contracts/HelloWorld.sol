pragma solidity ^0.4.4;

contract HelloWorld {
    uint public balance;

    function increaseBalance(){
        balance = 12345;
    }
}



// HelloWorld.setProvider(web3);
// HelloWorld.deployed().then(function(instance) {return instance.increaseBalance(); }).then(function(result) { console.log(result); });