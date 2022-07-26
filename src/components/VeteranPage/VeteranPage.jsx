import React from 'react';

import { Link } from 'react-router-dom';
import './VeteranPage.css';

// CUSTOM COMPONENTS
import RegisterForm from '../RegisterForm/RegisterForm';

function VeteranPage() {


  return (
    <>
    <div>
        <h4>Welcome, Veterans!</h4>
    


      <Link to="/veteran-intake"> <h4>Sign Up</h4></Link>
    </div>
    </>
  );
}

export default VeteranPage;