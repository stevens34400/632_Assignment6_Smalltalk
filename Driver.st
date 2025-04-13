Object subclass: Driver [
    | driverID name rating assignedRides |

    Driver class >> with: id name: n rating: r [
        ^ self new initializeWith: id name: n rating: r.
    ]

    initializeWith: id name: n rating: r [
        driverID := id.
        name := n.
        rating := r.
        assignedRides := OrderedCollection new.
    ]

    addRide: ride [
        assignedRides add: ride.
    ]

    getDriverInfo [
        | result safeString |
        result := ''.
        result := result, 'Driver: ', name, ' (ID: ', driverID, ', Rating: ', (rating asFloat) printString, ')\n'.
        assignedRides do: [ :r |
            [ 
                safeString := r rideDetails asString.
                result := result, safeString, '\n'.
            ] on: Error do: [ :ex | "skip rides that error" ].
        ].
        ^ result.
    ]
]
