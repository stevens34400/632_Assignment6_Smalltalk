Object subclass: Rider [
    | riderID name requestedRides |

    "Class method to create a new Rider instance with an ID and name"
    Rider class >> with: id name: n [
        ^ self new initializeWith: id name: n.
    ]

    "Instance method to initialize a Rider with an ID and name"
    initializeWith: id name: n [
        riderID := id.  "Assign the rider ID"
        name := n.  "Assign the rider's name"
        requestedRides := OrderedCollection new.  "Initialize an empty collection for requested rides"
    ]

    "Instance method to add a ride to the requested rides collection"
    requestRide: ride [
        requestedRides add: ride.
    ]

    "Instance method to view all requested rides"
    viewRides [
        | info |
        info := ''.  "Initialize an empty string for ride information"
        info := info, 'Rider: ', name, ' (ID: ', riderID, ')', '
'.  "Add rider's name and ID to the info string"
        requestedRides do: [ :ride |
            info := info, (ride rideDetails asString), '
'.  "Append each ride's details to the info string"
        ].
        ^ info.  "Return the compiled ride information"
    ]
]
