#Meeting One Minutes

* Discussed the project outline in detail, read it aloud for all group members to hear.
* Discussed potential frameworks and overall technology stack
 * Most likely using Meteor, a full stack framework that uses MongoDB as a database and node.js as the server. 
* Constructed this wonderful Github page.
* Setup collaboration tools such as Slack and Asana
 * Slack is a chat application, Asana is an application used for scheduling work
* Decided on future meeting times
 * Every Monday from 9:30 to 10:30

## Management System Organization

* Users: Managers, General Users

* Pages: Landing Page, 
         Rooms Detailed View, 
         Rooms List, 
         Student Application, 
         Ask for support (maintenance)
         Maintenance Tickets,
          

* Database tables: Users, Rooms, Tickets
    * Users: Role (String), 
             First Name (String), 
             Last Name (String), 
             Year Level (Number), 
             Program (String), 
             Warnings (String),
             Sex (String),
             Meal Plan (Bool),
           
    * Rooms: Type (String), 
             Capacity (Number),
             Address (String),
             Meal Plan (Bool),
             Description (String),      
             Amenities (Strings Array),

    * Tickets: Room ID,
               User ID (Submitting Student),   
               Title (String),
               Content (String),
               Urgency Rating (Number),
               Resolved (Bool),

    * Announcements:Room ID,
                    User ID (Submitting Manager),
                    Title (String),
                    Content (String),
                
           
