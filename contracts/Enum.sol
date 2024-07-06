// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract Enum {
    // Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancled
    }

    // Default values is the first element listed in 
    // definition of type, in this case "Pending"
    Status public status;
    // Returns uint
    // Pending = 0
    // Shipped = 1
    // Accepted = 2
    // Rejected = 3
    // Cancled = 4
    function get() public view returns (Status) {
        return status;
    }

    // Update Status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this
    function cancel() public {
        status = Status.Cancled;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}