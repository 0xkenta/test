pragma solidity 0.8.7;

/// @title store number contract
/// @author Kenta Sato
/// @notice You can use this contract to store number state
contract HelloWorld {
    uint256 number;
    
    event NumberStored(uint256 oldNumber, uint256 newNumber);
    
    /// @notice update the state variable number with param
    /// @param _number newNumber which updates the state variable
    function storeNumber(uint256 _number) external {
        uint256 oldNumber = number;
        number = _number;

        emit NumberStored(oldNumber, _number);
    }
    
    /// @notice get the state variable number
    /// @return the number which is stored in state variable number
    function retrieveNumber() external view returns (uint256) {
        return number;
    }
}
