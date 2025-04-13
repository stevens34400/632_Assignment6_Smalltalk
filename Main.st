FileStream fileIn: 'Ride.st'.
FileStream fileIn: 'StandardRide.st'.
FileStream fileIn: 'PremiumRide.st'.
FileStream fileIn: 'Driver.st'.
FileStream fileIn: 'Rider.st'.

r1 := StandardRide with: 'R001' pickup: 'Downtown' dropoff: 'Airport' distance: 10.
r2 := PremiumRide with: 'R002' pickup: 'Uptown' dropoff: 'Station' distance: 5.
r3 := PremiumRide with: 'R003' pickup: 'Center' dropoff: 'Mall' distance: 8.

{r1. r2. r3} do: [ :ride | Transcript show: ride rideDetails; nl. ].

d := Driver with: 'D101' name: 'Alice' rating: 4.9.
d addRide: r1.
d addRide: r3.
Transcript show: d getDriverInfo; nl.

c := Rider with: 'C301' name: 'Bob'.
c requestRide: r2.
Transcript show: c viewRides; nl.
