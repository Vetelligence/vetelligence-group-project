import React from 'react';
import LoginForm from '../LoginForm/LoginForm';

//This is the main login page for all users.
//Depending on the type of user, they will be directed
//to their particular dash/landing page after logging in.
function LoginPage() {
  return (
    <div>
      <LoginForm />
    </div>
  );
}

export default LoginPage;