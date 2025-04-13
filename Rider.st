Object subclass: Rider [
    | riderID name requestedRides |

    Rider class >> with: id name: n [
        ^ self new initializeWith: id name: n.
    ]

    initializeWith: id name: n [
        riderID := id.
        name := n.
        requestedRides := OrderedCollection new.
    ]

    requestRide: ride [
        requestedRides add: ride.
    ]

    viewRides [
        | info |
        info := ''.
        info := info, 'Rider: ', name, ' (ID: ', riderID, ')', '
'.
        requestedRides do: [ :ride |
            info := info, (ride rideDetails asString), '
'.
        ].
        ^ info.
    ]
]
