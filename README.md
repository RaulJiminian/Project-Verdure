# Project Verdure

![Verdure Logo](https://i.imgur.com/gPRbcbL.png)

A lifestyle one-stop-shop for vegan and wellness practitioners.

## Project Description
**Verdure** is a web app that, through member generated content, is a one-stop-shop for vegan and wellness practitioners; with access to things like vegan recipes, holistic exercises, wellness blogs, meetups and product reviews. The goal is to help people transition into a healthier and sustainable form of living, as well as meet other like-minded individuals in our supportive community. Members will the opportunity to save some of their favorites posts, recipes, exercises, etc. with a click of a button! It is our hope to build an informed and supportive community that practices self-care and in turn, care for others and this planet.

## Feature List
* Auth - register, login, logout

* Member Profile - Create, Read, Update, Delete

* Local Storage - Likes, Favorites

* Comment / Review

## MVP

1 ) A RESTful JSON API, which includes:
* At least three related models using Ruby on Rails:
  * One user table and at least two others; at least 1 pair of associated tables (one to many, many to many, etc.)
* A server that will use Active Record to define models for interacting with the database
* The implementation of auth using bcrypt and json web token
* Generic controller actions (Index, Show, Create, Update, Delete) between the two non-user models
* Rails Router to organize our route endpoints


2 ) A front-end that consumes the API, as well as:
* Permit the user to register, login, and send authenticated requests
* Permit the user to perform Create, Update, and Delete actions when logged in
* Layout and style front-end with clean & well-formatted CSS
* Use React Router for client side routing

3 ) Must be deployed(Heroku/Surge)

## Post - MVP

In the post-MVP lifecycle, the following will be included:

* Increased funcationaly, such as a favorites button that allows users to store their favorite posts into local storage
* Increased styling, animations/transition, hover effects, and media queires
* Include styling libraries or npm packages
* Include a likes table in order to rank posts

## Entity Relationship Diagram (ERD)

![ER Diagram](https://i.imgur.com/2hZ5Fb5.png)

## Wireframe

![Wireframe](https://i.imgur.com/ToXYRpu.png)

## Component Heirarchy

* < Welcome />
* < LogIn />
* < Register />
* < AllRecipes />
* < SpecificRecipe />
* < Comment />
* < PersonalProfile />
  * < CreateForm />
  * < EditForm />
  * < PersonalRecipeList />
  * < PersonalRecipes />

## Routes

[TBU]-[List of each server's routes, the structure of requests that I expect and the structure of responses sent]

## Dependencies

* Axios
* React-Router-Dom
* [TBU] Additional Libraries