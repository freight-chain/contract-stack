pragma solidity ^0.5.0;

// IFreightTrustMintRewardManager defines the interface of the rewards distribution manager.
interface IFreightTrustMintRewardManager {
    // rewardUpdate updates the stored reward distribution state for the account.
    function rewardUpdate(address _account) external;
}
