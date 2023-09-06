// Find all the bugs! :0

// You're working for Cardano and you've got a new hot storage contract
// ready to deploy, but the code is full of bugs!
// Your assignment is to fix all the bugs by compiling down
// the contract locating the errors, and cleaning up the code
// until you have a successful compile and deployment! Good luck!!

pragma soidity >0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contractt Storage {

    unit number

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function sore(uint256 num) puublic {
        number = num
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve( public view returns (uint256){
        return number
    }
