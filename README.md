# Economy-Planner-Plan

# Ongoing Issues

* Products in orders aren't sorted
* Users can choose multiple shifts that happen at the same time
* Admins can assign users to multiple shifts at the same time and more shifts than they've volunteered for
* Users can make limitless orders
* Users can change their orders constantly

## Websites Used
* https://coolors.co/palettes/trending (for the colour scheme)
* https://fonts.google.com/?preview.text_type=custom (for the fonts)

## Production Updates

### 11/03/21 5:45pm

Step Four in Progress: The ability to check required labour hours and check if enough labour hours have been assigned has been added. User sign up system added. The next step is to impose rules onto the website (such as preventing users from opting for multiple shifts at the same time) and thoroughly test the site.

### 10/03/21 6:30pm

Step Three Complete: Shift selection and shift CRUD systems complete. User and admin permissions added. Basic styling complete, though "selected" and "disabled" classes will need to be included for usability (see issues list). Project successfully deployed to Heroku. The next step is to include bonus functionality, such as calculating and displaying labour hours and checking if enough labour hours have been assigned.

### 08/03/21 10:30am

Step One Complete: Rails project and GitHub repository created. Database set up and seeded. Orders and products appear on the website correctly. Routes, controllers and views set up for users, orders, products, departments and shifts. The next step is to add basic functionality for non-admin users (user login, order CRUD system, product search and/or selection forms).

### 09/03/21 10:20pm

Step Two Complete: Home page and meno created. User login, show and edit functionality created. Order CRUD system created. Enabling product selection proved to be challenging, but it was successfully enabled. A product search form is not yet necessary for such a small range of products, but could be added as bonus functionality. The next step is to add a shift CRUD system, add user permissions and style the website.

## Production Plan

### Step One
* Create the Rails project and add it to GitHub
* Create database and seed database, using the database design diagram
* Create the users, orders, products, shifts and departments controllers
* Create an index for the products to check database
* Push to GitHub and update README

### Step Two
* Create a home page with a menu
* Create user login, show and edit functionality
* Create an order CRUD system
* Create product search and/or selection forms
* Push to GitHub and update README

### Step Three
* Create a shift selection system and CRUD system
* Enable user and admin permissions
* Add basic styling
* Deploy to Heroku
* Push to GitHub and update README

### Step Four - Bonus Functionality
* Calculate and display labour hours required for each department
* Add the ability to check if enough labour hours have been assigned
* Add user sign up and product and department CRUD systems
* Add product images (stretch goal)
* Push to GitHub / Heroku and update README

### Step Five
* Improve styling
* Test if everything works and fix any problems
* Review and simplify code
* Push to GitHub / Heroku and update README
