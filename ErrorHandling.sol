// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract VotingContract {
    struct Voter {
        bool isRegistered;
        bool hasVoted;
    }

    mapping(address => Voter) public voters;
    uint public totalVotes;
    uint public maxVotes;

    constructor(uint _maxVotes) {
        maxVotes = _maxVotes;
    }

    function registerVoter(address _voter) external {
        // Using require to check if the voter is not already registered
        require(!voters[_voter].isRegistered, "Voter is already registered.");

        voters[_voter].isRegistered = true;
    }

    function vote() external {
        Voter storage sender = voters[msg.sender];

        // Using require to check if the voter is registered
        require(sender.isRegistered, "Voter is not registered.");
        // Using require to check if the voter has not voted before
        require(!sender.hasVoted, "Voter has already voted.");
        // Using require to check if the total votes haven't reached the maximum allowed
        require(totalVotes < maxVotes, "Maximum votes reached.");

        sender.hasVoted = true;
        totalVotes++;
    }

    function getVoteStatus(address _voter) external view returns (bool) {
        return voters[_voter].hasVoted;
    }

    function assertExample(uint _a, uint _b) external pure returns (uint) {
        uint result = _a + _b;

        // Using assert to check if the result is within a certain range
        assert(result > 0 && result < 100);

        return result;
    }

    function revertExample(uint _age) external pure returns (string memory) {
        // Using revert to reject underage voters
        if (_age < 18) {
            revert("Voting is only allowed for individuals above 18 years of age.");
        }

        return "Voter is eligible to vote.";
    }
}
