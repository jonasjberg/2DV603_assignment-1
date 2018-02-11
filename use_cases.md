### Find Vacant Rooms

#### Actors

* Employee --- uses the system to gather information
* Customer --- inquires about vacant rooms at a specific date 

#### Goals

* Find rooms that are vacant at a certain date
* Respond to the customers inquiry

#### Preconditions

* The system is "live" and reflects the actual state of the world 
* The employee is authorized to access information on room availability

#### Summary
Demonstrates real-time use of the system to answer questions during interaction
with a customer.

#### Related
This use case is extracted from Scenario~\ref{scenario1}.


#### Entry Conditions
The employee wants to get information to provide to a customer during an
interaction.

#### Steps

1. Navigate to the room-search functionality
2. Enter the date of interest
3. Proceed to the results listing
4. Repeat steps 2--3 until all customer inquiries are resolved

#### Exit Condition
The employee can answer the customers requests through information provided by
the system.



### Find Vacant non-smoking Rooms

#### Actors

* Employee --- uses the system to gather information

#### Goals

* Find rooms for non-smokers that are vacant at a certain date

#### Preconditions

* The system is "live" and reflects the actual state of the world 
* At least one room is marked as a "non-smoking" room
* The employee is authorized to access information on room availability

#### Summary
Demonstrates room queries with a conditional.

#### Related
This use case is extracted from Scenario~\ref{scenario1}.
It is also related to Usecase~\ref{usecase1}.


#### Entry Conditions
The employee wants to find rooms for non-smokers that are vacant at a certain date.

#### Steps

1. Navigate to the room-search functionality
2. Enter the date of interest
3. Enable filtering non-smoking rooms
5. Proceed to the results listing

#### Exit Condition
The employee has gathered information on whether there are vacant non-smoking
rooms at a given date.



### Reserve a Specific Room

#### Actors

* Manager --- uses the system to reserve a room
* Customer --- wants to reserve a specific room

#### Goals

* Make a reservation of a specific room

#### Preconditions

* The system is "live" and reflects the actual state of the world 
* The manager can make reservations of specific rooms

#### Summary
Involves a special kind of interaction *that might require elevated privileges*.


#### Entry Conditions
The manager wants to meet a less frequent, specific request.

#### Steps

1. Navigate to the room-search functionality
2. Enter the room number of the requested room
3. See if it is currently vacant
4. If not:
    * Reserve the room
5. If it is:
    * Attempt to exploit elevated privileges to invalidate the current vacancy
    * Reserve the room

#### Exit Condition

1. The requested room is either already reserved and the manager can not meet the customer request.
2. The requested room is reserved. 

