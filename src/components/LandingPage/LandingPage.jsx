import React, { useState } from 'react';
import { useHistory } from 'react-router-dom';
import { Link } from 'react-router-dom';
import './LandingPage.css';

// CUSTOM COMPONENTS
import RegisterForm from '../AdminRegisterForm/AdminRegisterForm';

function LandingPage() {
  const [heading, setHeading] = useState('Welcome');
  const history = useHistory();

  const onLogin = (event) => {
    history.push('/login');
  };

  return (
    <div className="container">
      {/* <h2>{heading}</h2> */}

      <div className="grid">
        <div className="grid-col grid-col_8">
          <h2>
            I am a:
          </h2>

          <Link className="linkMainPage" to="/veteran">
            <p className="mainPageButton">
              Service Member
            </p>
          </Link>

          <Link className="linkMainPage" to="/employer">
            <p className="mainPageButton">
              Employer / Recruiter
            </p>
          </Link>

          <Link className="linkMainPage" to="/about">
            <p className="mainPageButton">
              About Vetelligence
            </p>
          </Link>
        </div>
        {/* <div className="grid-col grid-col_4">
          <RegisterForm />

          <center>
            <h4>Already a Member?</h4>
            <button className="btn btn_sizeSm" onClick={onLogin}>
              Login
            </button>
          </center>
        </div> */}
      </div>
    </div>
  );
}

export default LandingPage;
