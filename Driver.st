Object subclass: Driver [
    | driverID name rating assignedRides |

    "Class method to create a new Driver instance with specified id, name, and rating."
    Driver class >> with: id name: n rating: r [
        ^ self new initializeWith: id name: n rating: r.
    ]

    "Instance method to initialize a Driver with id, name, and rating, and an empty collection of assigned rides."
    initializeWith: id name: n rating: r [
        driverID := id.
        name := n.
        rating := r.
        assignedRides := OrderedCollection new.
    ]

    "Instance method to add a ride to the driver's collection of assigned rides."
    addRide: ride [
        assignedRides add: ride.
    ]

    "Instance method to get a string representation of the driver's information and their assigned rides."
    getDriverInfo [
        | result safeString |
        result := ''.
        "Concatenate the driver's name, ID, and rating into the result string."
        result := result, 'Driver: ', name, ' (ID: ', driverID, ', Rating: ', (rating asFloat) printString, ')\n'.
        "Iterate over each assigned ride and append its details to the result string."
        assignedRides do: [ :r |
            [ 
                safeString := r rideDetails asString.
                result := result, safeString, '\n'.
            ] on: Error do: [ :ex | "skip rides that error" ].
        ].
        ^ result.
    ]
]
