Ride subclass: StandardRide [

    fare [
        ^ distance * 1.5.
    ]

    rideDetails [
        ^ super rideDetails, ', Type: Standard, Fare: $', (self fare asFloat) printString.
    ]
]
