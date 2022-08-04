import React, { useEffect } from 'react';
import {
  HashRouter as Router,
  Redirect,
  Route,
  Switch,
} from 'react-router-dom';

import { useDispatch, useSelector } from 'react-redux';

import Nav from '../Nav/Nav';
import Footer from '../Footer/Footer';

import ProtectedRoute from '../ProtectedRoute/ProtectedRoute';

import AboutPage from '../AboutPage/AboutPage';
import LandingPage from '../LandingPage/LandingPage';
import LoginPage from '../LoginPage/LoginPage';
import RegisterPage from '../RegisterPage/RegisterPage';
import VeteranPage from '../VeteranPage/VeteranPage';
import EmployerPage from '../EmployerPage/EmployerPage';
import EmployerJobInput from '../EmployerJobInput/EmployerJobInput';
import AdminLandingPage from '../AdminLandingPage/AdminLandingPage';
import './App.css';

import VeteranIntakeForm from '../VeteranIntakeForm/VeteranIntakeForm';
import EmployerIntakeForm from '../EmployerIntakeForm/EmployerIntakeForm';
import { ProfileEditPage } from '../ProfileEditPage/ProfileEditPage';

import VeteranLandingPage from '../VeteranLandingPage/VeteranLandPage';
import CurrentJob from '../CurrentJob/CurrentJob';
import EmployerDetails from '../EmployerDetails/EmployerDetails';
import './App.css';

function App() {
  const dispatch = useDispatch();

  const user = useSelector(store => store.user);

  useEffect(() => {
    dispatch({ type: 'FETCH_USER' });
  }, [dispatch]);

  let loginRedirect;

  switch(user.user_type){
    case 'employer':
      loginRedirect = `/employer/${user.id}`
      break
    case 'veteran': 
      loginRedirect = `/veteran/${user.id}`
      break
    case 'admin':
      loginRedirect = `/admin`
  }

  return (
    <Router>
      <div>
        <Nav />
        <Switch>
          {/* Visiting localhost:3000 will redirect to localhost:3000/home */}
          <Redirect exact from="/" to="/home" />

          {/* Visiting localhost:3000/about will show the about page. */}

          <ProtectedRoute
            // shows AboutPage at all times (logged in or not)
            exact
            path="/veteran/:id"
          >
            <VeteranPage />
          </ProtectedRoute>
          <ProtectedRoute exact path='/veteran/:id/edit-profile'>
            <ProfileEditPage />
          </ProtectedRoute>

          <ProtectedRoute
            // shows EmployerPage if logged in
            exact
            path="/employer/:id"
          >
            {/* {user.user_type === 'Employer' ?
              // If the user is already logged in, 
              // redirect to the /employer/:id page
              <Redirect to="/employer/:id" />
              :
              // Otherwise, show the login page
              <LoginPage />
            } */}
            <EmployerPage />
          </ProtectedRoute>

          <Route
            // shows EmployerPage at all times
            exact
            path="/employer"
          >
            <EmployerIntakeForm/>
          </Route>

          <ProtectedRoute
            // shows EmployerPage at all times
            exact
            path="/jobInput"
          >
            <EmployerJobInput />
          </ProtectedRoute>


          <Route
            // shows AboutPage at all times (logged in or not)
            exact
            path="/about"
          >
            <AboutPage />
          </Route>

          {/* For protected routes, the view could show one of several things on the same route.
            Visiting localhost:3000/user will show the UserPage if the user is logged in.
            If the user is not logged in, the ProtectedRoute will show the LoginPage (component).
            Even though it seems like they are different pages, the user is always on localhost:3000/user */}

          <ProtectedRoute
            exact
            path="/admin"
            >
              <AdminLandingPage />
            </ProtectedRoute>

          {/* <ProtectedRoute
            // logged in shows InfoPage else shows LoginPage
            exact
            path="/info"
          >
            <InfoPage />
          </ProtectedRoute> */}

          <Route
            exact
            path="/login"
          >
            {user.id ?
              // If the user is already logged in, 
              // redirect to the /user page
              <Redirect to={`${loginRedirect}`} />
              :
              // Otherwise, show the login page
              <LoginPage />
            }
          </Route>

          <Route
            exact
            path="/registration"
          >
            {user.id ?
              // If the user is already logged in, 
              // redirect them to the /user page
              <Redirect to="/user" />
              :
              // Otherwise, show the registration page
              <RegisterPage />
            }
          </Route>

          <Route
            exact
            path="/home"
          >
            <LandingPage />
          </Route>
          
          <Route exact path="/veteran-intake">
            <VeteranIntakeForm />
          </Route>

          <Route exact path="/employer-intake">
            <EmployerIntakeForm />
          </Route>

          <Route exact path="/veteran-landing">
            <VeteranLandingPage />
          </Route>

          <Route exact path="/employer/employer-details/:id">
            <EmployerDetails />
          </Route>

          {/* If none of the other routes matched, we will show a 404. */}
          <Route>
            <h1>404</h1>
          </Route>
        </Switch>
        <Footer />
      </div>
    </Router>
  );
}

export default App;
