import React, { useState } from 'react';
import { useHistory, Link } from 'react-router-dom';
import { useSelector } from 'react-redux';
import './LandingPage.css';

// CUSTOM COMPONENTS


function LandingPage() {
  const user = useSelector(store => store.user)
  const [heading, setHeading] = useState('Welcome');
  const history = useHistory();

  const onLogin = (event) => {
    history.push('/login');
  };

  return (
    <div className="container">
      <h2>Find Military talent for your organization</h2>
      <p>Most platforms are designed around the job seeker’s experience - we are focused on the employer experience for the benefit of the service member.</p>
      <div className="landingInfo">
        <img src="./images/Discharge-01-min.png" height="160px" width="240px"/>
        <p className="landingInfoTitle">Sourcing</p>
        <br></br>
        <p>We utilize our partner channels, affiliations and network to find the best candidates for the job. These candidates have completed their journey through the military and are ready to provide value to your organization.</p>
        <br></br>
        <img src="./images/Conveyor-01-min.png" height="160px" width="240px"/>
        <br></br>
        <p className="landingInfoTitle">Translation</p>
        <br></br>
        <p>How does a “Crew Gunner” provide value in an office? Or on an assembly line? What skills will a veteran bring into the fold? We translate skill sets and paint a clear picture for you.</p>
        <br></br>
        <img src="./images/Computer-01-min.png" height="160px" width="240px"/>
        <br></br>
        <p className="landingInfoTitle">Referral</p>
        <br></br>
        <p>After verifying we have the right service member for your organization - we provide you with a selection of candidates, each primed to bring value to your business.</p>
      </div>
      <div className="grid">
        <div className="grid-col grid-col_8">
          <h3 className="h3-One">Ready to Get Started?</h3>
          <h3 className='landing-page-h3'>
            I am a:
          </h3>
          <div className="theButtons">
          { user.id && user.user_type === 'veteran'? 
          <Link className="linkMainPage" to={`/veteran/${user.id}`}>
          <p className="mainPageButton">
            Service Member
          </p>
        </Link>
          :
          <Link className="linkMainPage" to="/veteran-landing">
            <p className="mainPageButton">
              Service Member
            </p>
          </Link>
          }
          { user.id && user.user_type === 'employer' ?
           <Link className="linkMainPage" to={`/employer/${user.id}`}>
           <p className="mainPageButton">
             Recruiter / Employer
           </p>
         </Link>
          :
          <Link className="linkMainPage" to="/employer">
            <p className="mainPageButton">
              Recruiter / Employer
            </p>
          </Link>
          }
          </div>
        </div>
      </div>
    </div>
  );
}

export default LandingPage;
