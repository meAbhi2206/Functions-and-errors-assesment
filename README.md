
# Project Title
Smart Contract Error Handling

## Description
The Voting Smart Contract is a decentralized application (DApp) that implements the require(), assert(), and revert() statements to provide a secure and transparent voting system on the Ethereum blockchain. This smart contract can be applied to real-life scenarios such as elections, surveys, or decision-making processes where a tamper-proof and auditable voting mechanism is required.

## Getting Started

### Executing Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Steps to interact with the contract using Remix:

1. Open the contract file in Remix IDE.
2. Select the appropriate compiler version.
3. Compile the contract.
4. Deploy the contract to a local blockchain or a test network of your choice.
5. Use the contract functions to set values, retrieve values, and trigger error conditions.
6. Observe the outputs and transaction status in the Remix console.

### Contract Functions
* Here's an example of how to use the functions of the Voting Smart Contract:

1. Deploy the smart contract with a maximum vote limit of 100
```
VotingContract votingContract = new VotingContract(100);
```
2. Register a voter
```
votingContract.registerVoter(<voter_address>);
```
3. Cast a vote
```
votingContract.vote();
```
4. Check the vote status of a voter
```
bool hasVoted = votingContract.getVoteStatus(<voter_address>);
```
5. Perform an assertion example
```
uint result = votingContract.assertExample(<value_a>, <value_b>);
```
6. Perform a revert example
```
string memory message = votingContract.revertExample(<voter_age>);
```

## Author
Abhishek Ranjan

## License
This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
