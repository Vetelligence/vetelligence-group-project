
# Vetelligence Starting Repo
This version uses JavaScript, React, Redux, Saga, Express, Passport, and PostgreSQL.

We **STRONGLY** recommend following these instructions carefully. It's a lot, and will take some time to set up, but your life will be much easier this way in the long run.

## Prerequisites

Before you get started, make sure you have the following software installed on your computer:

- [Node.js](https://nodejs.org/en/)
- [PostrgeSQL 14.2](https://www.postgresql.org/)
- [Nodemon](https://nodemon.io/)

## Create database and table

To create your Database and tables, run the below lines of code in Node.js:

npm run db-up,

or 

--Create the database
createdb vetelligence

--Setup your tables
psql -d vetelligence -f database.sql

--Add all the data in
psql -d vetelligence -f dump.sql

## Development Setup Instructions

- Run `npm install`
- Create a `.env` file at the root of the project and paste this line into the file:
  ```
  SERVER_SESSION_SECRET=superDuperSecret
  ```
  While you're in your new `.env` file, take the time to replace `superDuperSecret` with some long random string like `25POUbVtx6RKVNWszd9ERB9Bb6` to keep your application secure. Here's a site that can help you: [https://passwordsgenerator.net/](https://passwordsgenerator.net/). If you don't do this step, create a secret with less than eight characters, or leave it as `superDuperSecret`, you will get a warning.
- Start postgres if not running already by using `brew services start postgresql`
- Run `npm run server`
- Run `npm run client`
- Navigate to `localhost:3000`

## Debugging

To debug, you will need to run the client-side separately from the server. Start the client by running the command `npm run client`. Start the debugging server by selecting the Debug button.

![VSCode Toolbar](documentation/images/vscode-toolbar.png)

Then make sure `Launch Program` is selected from the dropdown, then click the green play arrow.

![VSCode Debug Bar](documentation/images/vscode-debug-bar.png)

## Production Build

Before pushing to Heroku, run `npm run build` in terminal. This will create a build folder that contains the code Heroku will be pointed at. You can test this build by typing `npm start`. Keep in mind that `npm start` will let you preview the production build but will **not** auto update.

- Start postgres if not running already install postgres 14.2 (https://postgresapp.com/)
- Run `npm start`
- Navigate to `localhost:5000`

## Lay of the Land

There are a few videos linked below that show a walkthrough the client and sever setup to help acclimatize to the boilerplate. Please take some time to watch the videos in order to get a better understanding of what the boilerplate is like.

- [Initial Set](https://vimeo.com/453297271)
- [Server Walkthrough](https://vimeo.com/453297212)
- [Client Walkthrough](https://vimeo.com/453297124)

Directory Structure:

- `src/` contains the React application
- `public/` contains static assets for the client-side to include images and branding
- `build/` after you build the project, contains the transpiled code from `src/` and `public/` that will be viewed on the production site
- `server/` contains the Express App

This code is also heavily commented. We recommend reading through the comments, getting a lay of the land, and becoming comfortable with how the code works before you start making too many changes. If you're wondering where to start, consider reading through component file comments in the following order:

- src/components
  - AboutPage/AboutPage
  - AdminLandingPage/AdminLandingPage
  - App/App
  - CurrentJob/CurrentJob
  - EmployerDetails/EmployerDetails
  - EmployerIntakeForm/EmployerIntakeForm
  - Footer/Footer
  - JobListItem/JobListItem
  - LandingPage/LandingPage
  - LoginForm/LoginForm
  - LoginPage/LoginPage
  - LogOutButton/LogOutButton
  - MatchedCandidatesListItem/MatchedCandidatesListItem
  - Nav/Nav
  - ProfileEditPage/ProfileEditPage
  - ProtectedRoute/ProtectedRoute
  - RegisterForm/RegisterForm
  - RegisterPage/RegisterPage
  - VeteranIntakeForm/VeteranIntakeForm
  - VeteranLandingPage/VeteranLandingPage
  - VeteranPage/VeteranPage
  - VetsJobStatusSelector/VetsJobStatusSelector

Main Routes:
  - '/api/user' - router for all user types, registration & login
  - '/api/mos' - router for MOS table data filtered by branch
  - '/api/job' - router that handles all actions associated with displaying or updating jobs
  - '/api/skills' - router that displays all skills

## Deployment

1. Create a new Heroku project
1. Link the Heroku project to the project GitHub Repo
1. Create an Heroku Postgres database
1. Connect to the Heroku Postgres database from Postico
1. Create the necessary tables
1. Add an environment variable for `SERVER_SESSION_SECRET` with a nice random string for security
1. In the deploy section, select manual deploy

## Update Components

Each component is heavily commented with what it does, what other components it's connected to and the basics of how the component works. The database can be edited using all front end and end user inputs on the app. For developers the db can be edited in Postico or by editing the SQL queries from the router assosciated with the component to update.
