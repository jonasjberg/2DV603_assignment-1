
* Apparent main uses of the system:

    * Add, retrieve, modify room reservations
    * Add, retrieve, modify guest information
    * Provide information in "real-time" when staff interact with guests
    * Respond to queries for vacant rooms

* Notable characteristics of Hotel Rooms

    * Uniquely identified by the room number
    * Always either occupied or vacant at a specific point in time
    * Mutually exclusive smoking or non-smoking
    * Some adjoin other with internal doors between them
    * "Attractiveness" (room with a view, room size, etc.) is summarized with a quality level 
        * Priced based on quality level (attractiveness)
        * Quality levels determine max daily rate
    * Contains a fixed number of beds with specific sizes

* Notable characteristics of Reservations:

    * Always involve rooms
    * Spans a period of time

* Notes on the Data Storage:

    * `CRUD` database
        * Store basic information about guests 
            * Name
            * Address
            * Telephone number
            * Credit card (security requirements)
            * Passport number (security requirements)
        * Store payment data

    * Provides interface to front end systems
        * Query for relevant data for billing guests
    * Must not be insanely slow --- probably not an issue in practice
