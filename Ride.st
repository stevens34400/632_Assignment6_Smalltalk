Object subclass: Ride [
    | rideID pickupLocation dropoffLocation distance |

    Ride class >> with: id pickup: pickup dropoff: dropoff distance: dist [
        ^ self new initializeWith: id pickup: pickup dropoff: dropoff distance: dist.
    ]

    initializeWith: id pickup: pickup dropoff: dropoff distance: dist [
        rideID := id.
        pickupLocation := pickup.
        dropoffLocation := dropoff.
        distance := dist.
    ]

    fare [
        self subclassResponsibility
    ]

    rideDetails [
        ^ 'Ride ID: ', rideID, ', Pickup: ', pickupLocation,
           ', Dropoff: ', dropoffLocation, ', Distance: ', distance printString.
    ]
]
