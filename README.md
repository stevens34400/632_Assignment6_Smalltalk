# Ride Sharing System

This project implements a simple ride-sharing system with the following components:

1. **Ride Class**:
   - A base class that holds core details such as `rideID`, `pickupLocation`, `dropoffLocation`, `distance`, and an abstract `fare` method.

2. **Specific Ride Subclasses**:
   - `StandardRide` and `PremiumRide` subclasses override the `fare` method to calculate fares based on ride type.

3. **Driver Class**:
   - Manages driver details and assigned rides, with methods to add rides and display driver information.

4. **Rider Class**:
   - Manages rider details and requested rides, with methods to request rides and view ride history.

5. **System Functionality**:
   - Demonstrates polymorphism by storing and managing rides of different types.

Feel free to explore and extend the functionality as needed.
