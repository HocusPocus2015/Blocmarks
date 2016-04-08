###Blocmarks - a bookmarking :anchor: app
 
An application that allows a user to bookmark URLs, peruse other user's bookmarks and maintain a personal index of categorized bookmarks.

![Output sample] (https://github.com/HocusPocus2015/blocmarks/blob/master/app/assets/images/myblocmarks.gif) 

User Stories | 
------------ | 
A user can sign up for a free account by providing an email and passord |
A user can sign in and out of Blocmarks |
Users can see an index of all topics and bookmarks	|
Signed in users can create, read, update, and delete their own bookmarks	|
A user is the only one allowed to delete and update their bookmarks |
Any signed in user can "like and unlike" bookmarks created by other users	|
Users can see a list of bookmarks on their personal profile they added or liked |
Users can email a URL to Blocmarks and have it saved in the Blocmarks database	|

Gems :gem: and resources used: | 
------------ | 
[devise](https://github.com/plataformatec/devise) for account sign up, in and out. |
[pundit](https://github.com/elabs/pundit) for authorisation based on user roles. |
[Faker](https://github.com/stympy/faker) to populate the database with fake seed data for testing. |
[mailgun](http://www.mailgun.com/) to integrate in-and-outbound mail |


Made with the help of wonderful people :gift_heart: at [bloc](http://bloc.io).
