pragma solidity ^0.5.0;

import "@openzeppelin/contracts-ethereum-package/contracts/token/ERC20/ERC20.sol";
import "../interfaces/IFreightTrustMintBalanceGuard.sol";
import "../interfaces/IFreightTrustDeFiTokenStorage.sol";
import "../interfaces/IFreightTrustMintTokenRegistry.sol";
import "../interfaces/IFreightTrustMintRewardManager.sol";
import "../interfaces/IPriceOracleProxy.sol";
import "./IERC20Detailed.sol";

/**
 * This interface defines available functions of the FMint Address Provider contract.
 *
 * Note: We may want to create a cache for certain external contract access scenarios (like
 * for token price/value calculation, which needs the oracle and registry).
 * The contract which frequently connects with another one would use the cached address
 * from the address provider until a protoSync() is called. The protoSync() call would
 * re-load contract addresses from the address provider and cache them locally to save
 * gas on repeated access.
 */
interface IFreightTrustMintAddressProvider {
	// getFreightTrustMint returns the address of the FreightTrust fMint contract.
	function getFreightTrustMint() external view returns (IFreightTrustMintBalanceGuard);

	// setFreightTrustMint modifies the address of the FreightTrust fMint contract.
	function setFreightTrustMint(address _addr) external;

	// getTokenRegistry returns the address of the token registry contract.
	function getTokenRegistry() external view returns (IFreightTrustMintTokenRegistry);

	// setTokenRegistry modifies the address of the token registry contract.
	function setTokenRegistry(address _addr) external;

	// getCollateralPool returns the address of the collateral pool contract.
	function getCollateralPool() external view returns (IFreightTrustDeFiTokenStorage);

	// setCollateralPool modifies the address of the collateral pool contract.
	function setCollateralPool(address _addr) external;

	// getDebtPool returns the address of the debt pool contract.
	function getDebtPool() external view returns (IFreightTrustDeFiTokenStorage);

	// setDebtPool modifies the address of the debt pool contract.
	function setDebtPool(address _addr) external;

	// getRewardDistribution returns the address of the reward distribution contract.
	function getRewardDistribution() external view returns (IFreightTrustMintRewardManager);

	// setRewardDistribution modifies the address of the reward distribution contract.
	function setRewardDistribution(address _addr) external;

	// getPriceOracleProxy returns the address of the price oracle aggregate.
	function getPriceOracleProxy() external view returns (IPriceOracleProxy);

	// setPriceOracleProxy modifies the address of the price oracle aggregate.
	function setPriceOracleProxy(address _addr) external;

	// getRewardToken returns the address of the reward token ERC20 contract.
	function getRewardToken() external view returns (ERC20);

	// setRewardToken modifies the address of the reward token ERC20 contract.
	function setRewardToken(address _addr) external;
}
