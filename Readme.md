# Token-Based Time Tracker

## Overview

The **Token-Based Time Tracker** is a decentralized application (DApp) that allows users to log the time spent on tasks and earn ERC20 tokens as rewards for their logged time. This DApp interacts with the Ethereum blockchain via a smart contract to track the time and transfer tokens based on the hours worked.

The smart contract allows:

- **Logging time spent**: Users can log the time they spent on specific tasks.
- **Token rewards**: Users can claim ERC20 tokens based on the time they've logged (1 token per hour of work).
- **Tracking progress**: Users can track the amount of time they've logged and the tokens they've earned.

This project demonstrates how to integrate a simple ERC20 token reward system into a time tracking application using Ethereum smart contracts.

---

## Features

- **Log Time**: Users can log time spent on tasks.
- **Earn Tokens**: Earn tokens based on the amount of time logged (1 token per 3600 seconds or 1 hour of work).
- **Claim Tokens**: Claim earned tokens after logging time.
- **Web3 Integration**: Interact with the Ethereum blockchain using MetaMask and Web3.js.
- **Track Progress**: View the total time logged by the user and tokens earned.

---

## Prerequisites

Before you start, you need the following:

1. **MetaMask**: Install the MetaMask browser extension to connect your Ethereum wallet.
2. **Ethereum Network**: Make sure you are connected to a test network (e.g., Rinkeby or Mumbai) for development or to the Ethereum mainnet for production.
3. **Web3.js**: The application uses Web3.js to interact with the Ethereum blockchain.

---

## Deployment

### Deploying the Smart Contract

To deploy the **TokenBasedTimeTracker** smart contract, follow these steps:

1. **Compile and Deploy the Contract**:
   - Use Remix IDE or Truffle to compile and deploy the `TokenBasedTimeTracker` smart contract to your preferred Ethereum network (testnet or mainnet).
2. **Reward Token**:

   - Deploy an ERC20 token contract (you can use any standard ERC20 token) that will be used to reward users.
   - Replace the placeholder `YOUR_REWARD_TOKEN_ADDRESS` in the frontend code with the deployed token contract's address.

3. **Contract Address**:
   - Replace the placeholder `YOUR_CONTRACT_ADDRESS` in the frontend code with the address of your deployed **TokenBasedTimeTracker** contract.

### Setting Up the Frontend

1. Clone or download the project files to your local machine.

2. Open the `index.html` file in your browser.

3. Make sure you have MetaMask installed and connected to the correct Ethereum network.

---

## How to Use

### 1. **Connect MetaMask**

- When the user opens the page, they will be prompted to connect their Ethereum wallet via MetaMask.
- After the connection is successful, the user's wallet address will be displayed on the page.

### 2. **Log Time**

- Users can enter the time they have spent on a task in **seconds** and click the **Log Time** button.
- The time logged will be recorded on the blockchain, and an event will be emitted.

### 3. **Claim Tokens**

- After logging time, users can claim tokens based on their total logged time.
- Tokens are awarded at a rate of **1 token per 3600 seconds (1 hour)**.
- The user’s logged time will be reset after claiming tokens.

### 4. **Track Progress**

- The frontend will display the user's logged time and the tokens they have earned.

---

## Technologies Used

- **Solidity**: For smart contract development.
- **Web3.js**: For interacting with Ethereum from the frontend.
- **MetaMask**: For managing the user’s Ethereum wallet and signing transactions.
- **Ethereum Blockchain**: For deploying and interacting with smart contracts.

---

## File Structure

```
/TokenBasedTimeTracker
│
├── index.html             # The frontend HTML file
├── contract.sol           # Solidity smart contract for time tracking and token claiming
└── README.md              # Documentation for the project
```

---

## Smart Contract Details

### Contract Name: `TokenBasedTimeTracker`

#### Functions:

- **logTimeSpent**: Logs the time spent on a task. The time is added to the user’s total logged time.
- **claimTokens**: Claims tokens based on the total time logged by the user. (1 token per hour of logged time).
- **timeLogged**: Returns the total time logged by a specific user.
- **rewardToken**: The ERC20 token used to reward users for their logged time.

---

## Issues and Contributing

If you find any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

- **MetaMask**: For providing the browser extension that allows users to interact with Ethereum.
- **Web3.js**: For making it easy to interact with the Ethereum blockchain from the frontend.
- **OpenZeppelin**: For providing a secure implementation of ERC20 token standards.

---

### Conclusion

The **Token-Based Time Tracker** is a simple decentralized application that rewards users with tokens based on the time they log. It provides a seamless way to track time on the blockchain and earn tokens for work, making it an ideal solution for time-tracking and incentivizing productivity on decentralized platforms.
