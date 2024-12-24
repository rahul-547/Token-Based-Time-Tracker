// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    function transfer(address recipient, uint256 amount) external returns (bool);
}

contract TokenBasedTimeTracker {

    IERC20 public rewardToken; // ERC20 token used as reward

    // Mapping to store the total time logged by each user (in seconds)
    mapping(address => uint256) public timeLogged;

    // Event to log time spent on a task
    event TimeLogged(address indexed user, uint256 timeSpent);

    // Event to log token claim
    event TokensClaimed(address indexed user, uint256 tokensClaimed);

    // Constructor to initialize the reward token
    constructor(address _rewardToken) {
        rewardToken = IERC20(_rewardToken);
    }

    // Function 1: Log time spent on a specific task
    function logTimeSpent(uint256 timeInSeconds) external {
        require(timeInSeconds > 0, "Time must be greater than zero");

        // Update the total time logged for the user
        timeLogged[msg.sender] += timeInSeconds;

        // Emit event to log the time spent
        emit TimeLogged(msg.sender, timeInSeconds);
    }

    // Function 2: Claim tokens based on the time logged
    function claimTokens() external {
        uint256 timeSpent = timeLogged[msg.sender];
        require(timeSpent > 0, "No time logged to claim tokens");

        // Assume 1 token per 3600 seconds (1 hour of work)
        uint256 tokensToClaim = timeSpent / 3600;

        // Reset the logged time after claiming tokens
        timeLogged[msg.sender] = 0;

        // Transfer the calculated tokens to the user
        require(rewardToken.transfer(msg.sender, tokensToClaim), "Token transfer failed");

        // Emit event for token claim
        emit TokensClaimed(msg.sender, tokensToClaim);
    }
}
