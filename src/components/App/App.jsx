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
import UserPage from '../UserPage/UserPage';
import InfoPage from '../InfoPage/InfoPage';
import LandingPage from '../LandingPage/LandingPage';
import LoginPage from '../LoginPage/LoginPage';
import RegisterPage from '../RegisterPage/RegisterPage';
import VeteranPage from '../VeteranPage/VeteranPage';
import VeteranLandingPage from '../VeteranLandingPage/VeteranLandPage';
import VeteranIntakeForm from '../VeteranIntakeForm/VeteranIntakeForm';
import EmployerPage from '../EmployerPage/EmployerPage';
import EmployerJobInput from '../EmployerJobInput/EmployerJobInput';
import EmployerIntakeForm from '../EmployerIntakeForm/EmployerIntakeForm';
import AdminLandingPage from '../AdminLandingPage.js/AdminLandingPage';
import CurrentJob from '../CurrentJob/CurrentJob';
import './App.css';

function App() {
  const dispatch = useDispatch();

  const user = useSelector(store => store.user);

  useEffect(() => {
    dispatch({ type: 'FETCH_USER' });
  }, [dispatch]);

  return (
    <Router>
      <div>
        <Nav />
        <Switch>
          {/* Visiting localhost:3000 will redirect to localhost:3000/home */}
          <Redirect exact from="/" to="/home" />

          {/* Visiting localhost:3000/about will show the about page. */}

          <Route
            // shows AboutPage at all times (logged in or not)
            exact
            path="/veteran"
          >
            <VeteranPage />
          </Route>

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

          <Route
            // shows EmployerPage at all times
            exact
            path="/jobInput"
          >
            <EmployerJobInput />
          </Route>


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
            // logged in shows UserPage else shows LoginPage
            exact
            path="/user"
          >
            <UserPage />
          </ProtectedRoute>

          <Route
            exact
            path="/admin"
            >
              <AdminLandingPage />
            </Route>

          <ProtectedRoute
            // logged in shows InfoPage else shows LoginPage
            exact
            path="/info"
          >
            <InfoPage />
          </ProtectedRoute>

          <Route
            exact
            path="/login"
          >
            {user.id ?
              // If the user is already logged in, 
              // redirect to the /user page
              <Redirect to="/user" />
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
            {user.id ?
              // If the user is already logged in, 
              // redirect them to the /user page
              <Redirect to="/user" />
              :
              // Otherwise, show the Landing page
              <LandingPage />
            }
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

          <Route exact path="/current-job">
            <CurrentJob />
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
