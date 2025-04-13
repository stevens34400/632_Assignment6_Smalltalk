FileStream fileIn: 'Ride.st'.  "Load the Ride class from the file"
FileStream fileIn: 'StandardRide.st'.  "Load the StandardRide class from the file"
FileStream fileIn: 'PremiumRide.st'.  "Load the PremiumRide class from the file"
FileStream fileIn: 'Driver.st'.  "Load the Driver class from the file"
FileStream fileIn: 'Rider.st'.  "Load the Rider class from the file"

"Create instances of rides with specific details"
r1 := StandardRide with: 'R001' pickup: 'Downtown' dropoff: 'Airport' distance: 10.
r2 := PremiumRide with: 'R002' pickup: 'Uptown' dropoff: 'Station' distance: 5.
r3 := PremiumRide with: 'R003' pickup: 'Center' dropoff: 'Mall' distance: 8.

"Iterate over the rides and display their details"
{r1. r2. r3} do: [ :ride | Transcript show: ride rideDetails; nl. ].

"Create a driver instance and add rides to the driver"
d := Driver with: 'D101' name: 'Alice' rating: 4.9.
d addRide: r1.
d addRide: r3.
"Display the driver's information"
Transcript show: d getDriverInfo; nl.

"Create a rider instance and request a ride"
c := Rider with: 'C301' name: 'Bob'.
c requestRide: r2.
"Display the rides associated with the rider"
Transcript show: c viewRides; nl.
