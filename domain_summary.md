## Initial Observations
Initial assumptions about the domain are based on the description and
information given in the assignment instructions.


* Apparent main uses of the system:
  * Add, retrieve, modify room reservations
  * Add, retrieve, modify guest information
  * ``Real-time'' information provider when staff interact with guests
  * Respond to queries for vacant rooms

* Characteristics of Hotel Rooms

  * Uniquely identified by the room number
  * Always either occupied or vacant at a specific point in time
  * Mutually exclusive smoking or non-smoking
  * Some adjoin other with internal doors between them
  * ``Attractiveness'' (room with a view, room size, etc.) is summarized with a quality level 
  * Contains a fixed number of beds with specific sizes
  * Priced based on quality level (attractiveness)
    * Quality levels determine max daily rate

* Reservations:

  * Always involve rooms
  * Spans a period of time

* Data Storage:

  * `CRUD` database
  * Provides interface to front end systems
  * Store basic information about guests 
      * name
      * address
      * telephone number
      * credit card (security requirements)
      * passport number (security requirements)
  * Store payment data
    * Query for relevant data for billing guests
  * Must not be insanely slow --- probably not an issue in practice

