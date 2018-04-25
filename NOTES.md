1. Integrate basic theme to asset pipeline

2. Allow user to CRUD lists and items
create list
-ListsController shows whole list and presents user with form

show list

lists has_many items
items belongs_to list
users

* password not asked for in login, shows same lists
* signup not working at :email, works in console
* understand what sessions and cookies are, and how they are working in this particular case



<!-- expedition    -title,length, expedition equipment -->

crags -name(string),
 location(object itself),
  season(string),
   flag -have flag.all for drop down  (need a helmet)(watch out from snakes)____

user logs in to home page create a crag has many users, users has many crags
user should be able to see and edit all crags(add flags only), and create a new crag, see by location or crag.

  crags table and Crag model   crag controller   index, show   location_id, user_id
Crag (climbing area)
 -(belongs_to)location    crag.location = sonora
 -season (string)
 -grade range (string)

 location table
  Location -icarus     has_many Crags  location.crags = icarus, jailhouse
           -jailhouse

           users controller
  User -comments     crags/1/users/1      
      has_many crags through cragcomments
      has_many cragcomments
