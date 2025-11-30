My database was already in Second Normal Form (2NF) and Third Normal Form (3NF).
Each table has a single, simple primary key (a SERIAL field), so there are no composite keys. Because of that, there are no partial dependencies, meaning the tables automatically satisfy 2NF.

The tables also satisfy 3NF because:

All non-key attributes depend directly on their table’s primary key.

There are no transitive dependencies (for example, no field depends on another non-key field).

The schema separates concepts into their own tables: Invitee, Room, and Meeting, each representing a single entity type.

For example:

In Invitee, both invitee_name and invited_by depend only on invitee_no.

In Room, room_name and floor_number depend only on room_no.

In Meeting, the meeting details depend only on meeting_no, and room_no is correctly used as a foreign key rather than storing room data redundantly.

For this reason I have not edited the database.
