Ride subclass: PremiumRide [

    fare [
        ^ distance * 3.
    ]

    rideDetails [
        ^ super rideDetails, ', Type: Premium, Fare: $', (self fare asFloat) printString.
    ]
]
