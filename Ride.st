Object subclass: Ride [
    | rideID pickupLocation dropoffLocation distance |  "Instance variables for the Ride class"

    "Class method to create a new Ride instance with specified parameters"
    Ride class >> with: id pickup: pickup dropoff: dropoff distance: dist [
        ^ self new initializeWith: id pickup: pickup dropoff: dropoff distance: dist.
    ]

    "Instance method to initialize a Ride object with given parameters"
    initializeWith: id pickup: pickup dropoff: dropoff distance: dist [
        rideID := id.  "Assign the ride ID"
        pickupLocation := pickup.  "Assign the pickup location"
        dropoffLocation := dropoff.  "Assign the dropoff location"
        distance := dist.  "Assign the distance of the ride"
    ]

    "Abstract method for calculating fare, to be implemented by subclasses"
    fare [
        self subclassResponsibility
    ]

    "Method to return a string with the ride details"
    rideDetails [
        ^ 'Ride ID: ', rideID, ', Pickup: ', pickupLocation,
           ', Dropoff: ', dropoffLocation, ', Distance: ', distance printString.
    ]
]
