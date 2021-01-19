//SPDX-License-Identifier: Unlicense
pragma solidity ^0.7.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./interfaces/IToken.sol";
import "./storage/LibTokenStorage.sol";

contract Token is IToken {
    function addToken(address _token) external override {
        LibTokenStorage.tokenStorage().token = IERC20(_token);
        emit TokenUpdated(address(0), _token);
    }

    function getToken() external override view returns (address) {
        return address(LibTokenStorage.tokenStorage().token);
    }
}
