Ride subclass: PremiumRide [

    "Calculate the fare for a premium ride by multiplying the distance by 3."
    fare [
        ^ distance * 3.
    ]

    "Return the ride details, including the type and fare, by appending to the superclass's ride details."
    rideDetails [
        ^ super rideDetails, ', Type: Premium, Fare: $', (self fare asFloat) printString.
    ]
]
