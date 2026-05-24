# MainWallet

A beginner-friendly Web3 wallet dApp built with Solidity, Hardhat, React, and ethers.js.

Users can:

- Deposit ETH
- Withdraw ETH
- Connect MetaMask
- View wallet interactions
- Listen to blockchain events

---

# Tech Stack

## Smart Contract

- Solidity
- Hardhat
- OpenZeppelin

## Frontend

- React
- Vite
- ethers.js

## Wallet

- MetaMask

---

# Project Structure

```bash
MainWallet/
│
├── contracts/
│   └── SimpleWallet.sol
│
├── scripts/
│   └── deploy.js
│
├── frontend/
│   ├── src/
│   └── package.json
│
├── hardhat.config.js
│
└── README.md
```

---

# Features

- ETH deposits
- ETH withdrawals
- Smart contract events
- Real-time frontend updates
- MetaMask integration

---

# Installation

## Clone Repository

```bash
git clone https://github.com/yourusername/mainwallet.git
```

---

# Install Dependencies

```bash
npm install
```

---

# Compile Smart Contract

```bash
npx hardhat compile
```

---

# Start Local Blockchain

```bash
npx hardhat node
```

---

# Deploy Contract

```bash
npx hardhat run scripts/deploy.js --network localhost
```

---

# Frontend Setup

Move into frontend:

```bash
cd frontend
```

Install packages:

```bash
npm install
```

Run frontend:

```bash
npm run dev
```

---

# MetaMask Setup

Add Hardhat Network:

| Field | Value |
|---|---|
| Network Name | Hardhat |
| RPC URL | http://127.0.0.1:8545 |
| Chain ID | 31337 |
| Currency Symbol | ETH |

---

# Import Test Account

When running:

```bash
npx hardhat node
```

Hardhat provides test private keys.

Import one into MetaMask for testing.

DO NOT use these keys on mainnet.

---

# Smart Contract Events

The project uses Solidity events:

```solidity
event Deposited(address indexed user, uint amount);
```

Frontend listens using ethers.js:

```javascript
contract.on("Deposited", callback)
```

---

# Learning Goals

This project teaches:

- Solidity basics
- Smart contract deployment
- Events
- MetaMask integration
- ethers.js
- Frontend/Web3 communication

---

# Future Improvements

- ERC20 token support
- Transaction history
- User authentication
- Multi-user wallet system
- Dashboard UI
- Network switching

---

# Author

Shija Kpamsar Daniel

Senior Software Engineer