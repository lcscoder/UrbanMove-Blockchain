
 // SPDX-License-Identifier: MIT
 pragma solidity ^0.8.20;

 contract UrbanMove {

     string public companyName = "UrbanMove Taxi Services";

     uint public totalBookings = 0;


struct Booking {
    address passenger;
    address driver;
    uint fare;
    bool completed;
}

mapping(uint => Booking) public bookings;

uint public nextBookingId = 1;

mapping(uint => bool) public paymentReceived;
     
function createBooking() public {
    totalBookings++;
}

function createTaxiBooking(address _driver, uint _fare) public {
    uint bookingId = nextBookingId;

    bookings[bookingId] = Booking({
        passenger: msg.sender,
        driver: _driver,
        fare: _fare,
        completed: false
    });


    nextBookingId++;
    totalBookings++;
}

        
function payForBooking(uint _bookingId) public payable {
    Booking storage booking = bookings[_bookingId];

    require(booking.passenger == msg.sender, "Only passenger can pay");
    require(booking.fare > 0, "Invalid booking");
    require(!paymentReceived[_bookingId], "Already paid");
    require(msg.value == booking.fare, "Incorrect payment amount");

    paymentReceived[_bookingId] = true;
}


function completeBooking(uint _bookingId) public {
    Booking storage booking = bookings[_bookingId];

    require(booking.fare > 0, "Invalid booking");
    require(booking.driver == msg.sender, "Only driver can complete");
    require(paymentReceived[_bookingId], "Payment not received");
    require(!booking.completed, "Already completed");

    booking.completed = true;

    payable(booking.driver).transfer(booking.fare);
}

      
 }
