import React from 'react';
import { useHistory } from 'react-router-dom';
import RegisterForm from '../RegisterForm/RegisterForm';

//This component allows an Admin to register a new admin account.
function RegisterPage() {
  const history = useHistory();

  return (
    <div>
      <h3>Register User</h3>
      <RegisterForm />
      <center>
        <button
          type="button"
          className="btn btn_asLink"
          onClick={() => {
            history.push('/login');
          }}
        >
          Login
        </button>
      </center>
    </div>
  );
}

export default RegisterPage;
