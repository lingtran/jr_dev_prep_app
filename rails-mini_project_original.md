### Rails Mini Project Must-Haves:

* Deploy to Heroku
* Authorization
* Things to Consider

If you choose to do this option make sure you try to implement all the concepts we've touched over the last week. For example:

* TDD - model and feature tests
* CRUD
* 1-1 and 1-many relationships
* ReST-ful routes
* Well structured relational database design
* Rails helpers
* Sessions, flashes and maybe cookies if you have a good use case for them.
* Authentication
* Authorization

****

### Project Idea: Junior Dev Interview Prep App
##### Student: Ling Tran (1602)

###### Questions
* Admin can create, edit and delete questions
* User can move through each question and make comments
* User can set comfort level with question and edit it
* Admin can see comfort level assigned to each question across users (extension/nice-to-have?)

###### Prep session
* User index will display questions that link to their comments specific to user
* User clicks a link to start seeing questions
* User clicks to return back to user#index to end a session. There will be a Hit Counter captured at end of prep session.  
* Any question with comments made will still appear
* Admin can see how many prep sessions each user has made

##### Comments
* Comments made specific to a user
* Admin will not be seeing these comments
* User can not see comments made by other users

##### Relationships
* Question has multiple comments and users
* A user has multiple sessions. Each session belongs to a user.

##### Extension for functionality if time permits
* User can see how much time they are taking per question
* Enable start/end prep sessions per user and build out analytics
