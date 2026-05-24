// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract MainWallet {

    mapping(address => uint256) public balances;

    event Deposited(address indexed user, uint256 amount);

    event Withdrawn(address indexed user, uint256 amount);

    // Deposit ETH
    function deposit() public payable {

        require(msg.value > 0, "Send some ETH");

        balances[msg.sender] += msg.value;

        emit Deposited(msg.sender, msg.value);
    }

    // Withdraw ETH
    function withdraw(uint256 amount) public {

        require(
            balances[msg.sender] >= amount,
            "Insufficient balance"
        );

        balances[msg.sender] -= amount;

        payable(msg.sender).transfer(amount);

        emit Withdrawn(msg.sender, amount);
    }

    // Check contract balance
    function getContractBalance()
        public
        view
        returns(uint256)
    {
        return address(this).balance;
    }
}