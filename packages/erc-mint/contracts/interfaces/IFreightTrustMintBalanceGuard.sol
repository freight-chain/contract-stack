pragma solidity ^0.5.0;

// IFreightTrustMintCore defines the interface of the FreightTrust fMint core contract.
interface IFreightTrustMintBalanceGuard {
    // rewardCanClaim checks if the account can claim accumulated rewards.
    function rewardCanClaim(address _account) external view returns (bool);

    // rewardIsEligible checks if the account is eligible to receive any reward.
    function rewardIsEligible(address _account) external view returns (bool);

    // collateralCanDecrease checks if the specified amount of collateral can be removed from account
    // without breaking collateral to debt ratio rule.
    function collateralCanDecrease(address _account, address _token, uint256 _amount) external view returns (bool);

    // debtCanIncrease checks if the specified amount of debt can be added to the account
    // without breaking collateral to debt ratio rule.
    function debtCanIncrease(address _account, address _token, uint256 _amount) external view returns (bool);
}
