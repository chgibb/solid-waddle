This document is meant to be a mock-up of what a client would send to a software development company.

This document contains cases for:
#### All Users:
* login
* logout

#### Student Users:
* registration
* application status check
* application details edit
* application delete
* user views messages
* Student sends message
* user views room information

#### Admin Users:
* accommodation assignment
* admin views room information
* admin sends message
* admin creates room
* admin creates building
* admin deletes room
* admin deletes building
* admin edits room
* admin edits building
* admin views messages from residents

#Login

##Primary Actors:
* Students
* Administration

*Pre-conditions:*
* User has active account
* Website exists

*Basic flow of events:*
1. User reaches landing page of website
2. User clicks login button
3. User enters username and password
4. Username and password is validated server side
5. User redirected to appropriate page depending on role

*Alternate flow of events:*
3a. Forgot username/password button is clicked
3a1. Server sends email asking to set new password
4a. Username or password is invalid
4a1. Error message displayed, new attempt allowed
4a2. Forgot Password? Button displayed

#Logout

##Primary Actors:
* Students
* Administration

*Pre-Conditions:*
* User is logged in

*Basic flow of events:*
1. User clicks the logout button from anywhere on the website
2. User is logged out/session cleared
3. User redirected to landing page

*Alternate flow of events:*
* None

#Registration

##Primary Actors:
* Students

*Pre-Conditions:*
* None

*Basic flow of events:*
1. User clicks the register button from the landing page
2. User is a student, and is provided with a registration form
3. User is asked for:
  * Lakehead email
  * First Name
  * Last Name
  * Password
  * Re-entry of password
4. User hits the submit button
5. Database entry is added with the new user
6. User is redirected to Application Page

*Alternate flow of events:*
2a. User is an administrator, and is provided with a registration form
2a1. User is asked for:
 * Email
 * First Name
 * Last Name
 * password
 * Re-entry of password
2a2. Admin confirms and is added to database
5a. Information is invalid
5a1. Error message is displayed with the problem (e.g. not @lakehead email)
5a2. User given chance to correct their entry
3a. User navigates away from page before filling in full form
3a1. User asked if they are sure they want to exit page, as they will lose their information
3a2. User hits yes
3a3. Form is reset, user redirected

#Application Creation

##Primary Actors:
* Students

*Pre-Conditions:*
* Student is logged in
* User does not have an application

*Basic flow of events:*
1. User clicks 'create application' button on applications page
2. User is provided with application form
3. User is asked for:
  * Year Level
  * Major
  * Sex
  * Co-ed room preference
  * Meal Plan
4. User hits the submit button
5. Information is validated
6. Database entry is added with the new user
7. User is redirected to status page

*Alternate flow of events:*
5a. Information is invalid
5a1. Error message is displayed with the problem (e.g. not @lakehead email)
5a2. User given chance to correct their entry
3a. User navigates away from page before filling in full form
3a1. User asked if they are sure they want to exit page, as they will lose their information
3a2. User hits yes
3a3. Form is reset, user redirected

#Application status check

##Primary Actors:
* Students

*Pre-Conditions:*
* Student is logged in
* Student has not yet been assigned accommodation

*Basic flow of events:*
1. User is directed to status check page and shown the current status of their application and an estimated completion time

*Alternate flow of events:*
* None

#Student views a message

##Primary Actors
*Student

*Pre-conditions*
* Logged in as student

*Basic flow of events:*
1. Navigate to your room home page
2. Messages appear in list on that page
3. Click on message to fully view contents

*Alternate flow of events:*
2a1. There are no messages to display
2a2. Small notice saying there are no messages

#Student sends a message
##Primary Actors:

*Pre-Conditions*
* Student is logged in
* Student has a room assigned

*Basic flow of events:*
1. User clicks on 'Send Message' button
2. User given form to fill containing message title, message type, message content
3. User submits message

*Alternate flow of events:*
3a1. Form not filled out properly
3a2. User given another opportunity to fill in form.

#Application details edit

##Primary Actors:
* Students

*Pre-Conditions:*
* Student is logged in
* Student has not yet been assigned accommodation

*Basic flow of events:*
1. User clicks 'Edit Application' from status check page
2. User is shown the details of their application
3. User has a chance to edit the following fields:
  * Year
  * Major
  * Co-ed room preference
  * Meal Plan
4. User clicks 'Save Changes'
5. User details updated in the database
6. User is returned to the status check page

*Alternate flow of events:*
3a. User navigates away from page before filling in full form
3a1. User asked if they are sure they want to exit page, as they will lose their information
4a. User clicks 'Cancel'
4a1. User is returned to the status check page

#Application deleting

##Primary Actors:
* Students

*Pre-Conditions:*
* Student is logged in
* Student has not yet been assigned accommodation

*Basic flow of events:*
1. User clicks 'Cancel My Application' from status check page
2. A modal window appears with deletion form
3. User enters their email for validation
4. User clicks 'Delete Application'
5. User is deleted from database

*Alternate flow of events:*
2a. User clicks outside the area of the modal window
2a1. Modal window is closed and the user returned to the status check page
3a. User enters incorrect email
3a1. User is notified of mistake and has a chance to correct it.
4a. User clicks 'Cancel'
4a1. User is returned to the status check page

#Student views room information

##Primary Actors:
* Student

*Pre-Conditions*
* Student is logged in
* Rooms have been assigned
* This user has a room assigned

*Basic flow of events:*
1. Upon student log in, they are directed to room profile page
2. User can see their building, room number, and roommates

*Alternate flow of events:*
None

#Accommodation Assignment

##Primary Actors:
* Administrator

*Pre-Conditions*
* Admin is logged in
* Date for submitting applications has passed

*Basic flow of events:*
1. Admin navigates to the assignment tab
2. Admin looks at statistics such as available rooms/people looking for rooms
3. Admin clicks 'assign rooms' button which auto fills rooms
4. Admin can review the auto selections, and then confirm

*Alternate flow of events:*
3a1. Admin manually assigns rooms to people (we would like to minimize/eliminate this)
3a2. Admin confirms selections
3b1. Auto room filler leaves some people left over
3b2. Admin assigns these people rooms
3b3. Admin confirms selections
3b1a1. There are no rooms for people
3b1a2. Admin must email these people externally

#Admin Views Room Information

##Primary Actors:
* Administrator

*Pre-conditions*
* Admin is logged in
* Rooms exist in the system

*Basic flow of events:*
1. Administrator navigates to room list tab
2. Administrator can choose any of the rooms which is a link to that room page
3. Information fills with the specific room filled
  * Room devices (microwave, desk, bed etc...)
  * Room residents
  * Duration of stay (?)

*Alternate flow of events:*
* None

#Admin Sends Message

##Primary Actors:
* Administrator

*Pre-conditions*
* Administrator is logged in
* Rooms exist in the system
* Rooms have been assigned

*Basic flow of events:*
1. Administrator navigates to messaging tab
2. Administrator chooses to message a room
3. Administrator enters message to residents
4. Administrator submits message

*Alternate flow of events:*
2a1. Admin chooses to message an individual user
2a2. Admin types message
2a3. Admin submits message
2b1. Admin chooses to message a building
2b2. Admin types message
2b3. Admin submits message

#Admin Creates a Room

## Primary Actors
* Administrator

*Pre-Conditions*
* Admin is logged in
* Some buildings exist

*Basic flow of events:*
1. Navigate to room creation page
2. Form is visible, with fields:
  * Building -> dropdown/search box
  * Room number
  * Accommodations ->
3. Form is filled out
4. Admin submits room

*Alternate flow of events:*
4a1. Form isn't filled out sufficiently
4a2. Admin given opportunity to fill out form with proper information, error messages are provided

#Admin Creates a Building

## Primary Actors

*Pre-Conditions*
* Admin is logged in

*Basic flow of events:*
1. Navigate to building creation page
2. Form is visible with fields:
  * Building Name
  * Co-Op (yes/no)
  * Location
3. Form is filled out
4. Admin submits building

*Alternate flow of events:*
4a1. Form isn't filled out sufficiently
4a2. Admin given opportunity to fill out form with proper information, error messages are provided

#Admin Deletes a Building
##Primary Actors
*Pre-Conditions*
* Admin is logged in
* Room exists

*Basic flow of events:*
1. Navigate to building page
2. List of buildings appear
3. Click the 'delete building' button
4. Dialogue to confirm appears
5. Confirm deletion
6. Building is deleted

*Alternate flow of events:*
5a1. Do not confirm
5a2. Building is not deleted

#Admin Deletes a Room
##Primary Actors
*Pre-Conditions*
* Admin is logged in
* Rooms exist

*Basic flow of events:*
1. Navigate to room page
2. List of rooms appear
3. Click the 'delete room' button
4. Dialogue to confirm appears
5. Confirm deletion
6. Room is deleted

*Alternate flow of events:*
5a1. Do not confirm
5a2. Room is not deleted

#Admin Edits a Building
##Primary Actors
*Pre-Conditions*
* Admin is logged in
* Buildings exist

*Basic flow of events:*
1. Navigate to buildings page
2. List of buildings appears
3. Click on 'edit buildling' button
4. Form to edit building information appears
5. Admin fills in information they would like to edit
6. Admin confirms Edits
7. Admin redirected to buildings page

*Alternate flow of events:*
6a1. Admin does not confirm Edits
6a2. Admin given opportunity to re-enter some information, or cancel edit
6b1. Form filled out incorrectly
6b2. Admin given opportunity to change form information

#Admin Edits a Room
##Primary Actors
*Pre-Conditions*
* Admin is logged in
* Rooms exist

*Basic flow of events:*
1. Navigate to rooms page
2. List of rooms appears
3. Click on 'edit room' button
4. Form to edit rooms information appears
5. Admin fills in information they would like to edit
6. Admin confirms Edits
7. Admin redirected to rooms page

*Alternate flow of events:*
6a1. Admin does not confirm Edits
6a2. Admin given opportunity to re-enter some information, or cancel edit
6b1. Form filled out incorrectly
6b2. Admin given opportunity to change form information


#Admin views a message
##Primary Actors
* Admin

*Pre-conditions*
* Logged in as admin

*Basic flow of events:*
1. Navigate to message page
2. List of messages appears
3. Click on message to read and view information about sender
4. Close message

*Alternate flow of events:*
2a1. There are no messages to display.
2a2. Small notice saying there are no messages
