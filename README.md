# user-auth-example

this is a user auth CRUD example made in ruby on rails using the devise gem

Things you may want to cover:

* Ruby version

    ruby 3.2.2

* model creation
![model creation visuale](https://ibb.co/dfDstRb "model creation visuale")

I created two databases one called User that was made using the devise gem and the other called Post.
The relation's:
User has_many :posts, this means that a given user could have more than one post registerd
Post belogns_to :user, this means that the post model will have a foreign key constraint linked to User

---

* The home page while the user is not signed in
![home page not signed in](https://ibb.co/cD2vYDV "home page not signed in")
i made it so that a non registerd user's can not edit, delete or create articles but can only view them
they also do not have accses to these paths if the do not register first

* The home page of a registerd user
![home page signed in](https://ibb.co/42nzrqR "home page signed in")
i made it so a registerd user can create posts as well as view there own posts, and they can only delete and edit there own posts,
they can not delete or edit posts of other users

---

* Sign in without errors
![sign in](https://ibb.co/pXNYqKw "sign in")
Devise user sign in form without any errors

* Sign in with error's
![sign in with error](https://ibb.co/K9bNxNM "sign in with error")
this is the sign in form with an error, this will happen if you leave any of the fields blank when sighning in or if
the information provided does not match with information from the database

* Sign up form
![sign up](https://ibb.co/YZCpWpM "sign up")
This is a Devise user sign up form, if you leave the field's blank you will have
the same styled error message but the message will be differnt

---

* Create a post
![create a post](https://ibb.co/YDcYwdS "create a post")
i made it so the a user can create a new post, and the :title and :content fields are required to do so, if left blank you will recive an error message,
check out <i>app/models/post</i> to see more

* show or read a post
![show a post](https://ibb.co/RBrFS1r "show a post")
This is where users can see the full content as well as the title, edit, and delete buttons of a post

* Edit a post
![edit a post](https://ibb.co/6RzwKpc "edit a post")
i made it so that users can edit created posts, but they can only edit posts that they made not that other users made, will recive an error message if there are fields that are left blank

---

* My posts without posts
![my posts empty](https://ibb.co/Pg99z5T "my posts empty")
i made it so that a user can view posts that they have made,
and this is the message that displays when a post has not been made yet

* My posts with posts
![my posts](https://ibb.co/2MzF9Gh "my posts")
i made it so that user is able to view posts that they hhave made

---

* Admins
<img src="https://i.ibb.co/LrvsXt5/admin.png" alt="admin"/>
If a user is an admin they can read/show , edit, and delete posts of all users as they see fit

* Styling
I used the tailwind gem in order to style my project, in order to see the styles used checkout <i>app/assetes/builds/tailwind.css</i>

---

* Deployment instructions
in order to run this app localy you will need [Ruby](https://www.ruby-lang.org/fr/) as well as [Ruby on rails](https://rubyonrails.org/)

```cmd
bundle/install
rails s
```

if you want to edit the styles you will need to run
```cmd
rails tailwindcss:watch
```
in order to see styles take place in real time

# Thank you for checking ou this projet 😊
