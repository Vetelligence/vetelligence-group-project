import React, { useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';

function RegisterForm() {
  // const [username, setUsername] = useState('');
  // const [password, setPassword] = useState('');
  const errors = useSelector((store) => store.errors);
  const dispatch = useDispatch();
  const [userInfo, setUserInfo] = useState({})

  const registerUser = (event) => {
    event.preventDefault();

    dispatch({
      type: 'REGISTER',
      payload: userInfo
    });
  }; // end registerUser

  return (
    <form className="formPanel" onSubmit={registerUser}>
      <h3>Register User</h3>
      {errors.registrationMessage && (
        <h3 className="alert" role="alert">
          {errors.registrationMessage}
        </h3>
      )}
      <div>
          <TextField
            type="text"
            name="username"
            label="username"
            value={userInfo.username}
            required
            onChange={(event) => setUserInfo({...userInfo, username:event.target.value})}
          />
      </div>
      <div>
          <TextField
            type="password"
            name="password"
            label="password"
            value={userInfo.password}
            required
            onChange={(event) => setUserInfo({...userInfo, password: event.target.value})}
          />
      </div>
      <div>
          <TextField
            type="text"
            name="firstName"
            label="First Name"
            value={userInfo.firstName}
            required
            onChange={(event) => setUserInfo({...userInfo, firstName: event.target.value})}
          />
      </div>
      <div>
          <TextField
            type="text"
            name="lastName"
            label="Last Name"
            value={userInfo.lastName}
            required
            onChange={(event) => setUserInfo({...userInfo, lastName: event.target.value})}
          />
      </div>
      <div>
          <TextField
            type="text"
            name="email"
            label="Email"
            value={userInfo.firstName}
            required
            onChange={(event) => setUserInfo({...userInfo, email: event.target.value})}
          />
      </div>
      <div>
          <TextField
            type="text"
            name="phoneNumber"
            label="Phone Number"
            value={userInfo.lastName}
            required
            onChange={(event) => setUserInfo({...userInfo, phoneNumber: event.target.value})}
          />
      </div>
      <div>
          <TextField
            type="text"
            name="city"
            label="City"
            value={userInfo.city}
            required
            onChange={(event) => setUserInfo({...userInfo, city: event.target.value})}
          />
      </div>
      <div>
          <TextField
            type="text"
            name="state"
            label="state"
            value={userInfo.state}
            required
            onChange={(event) => setUserInfo({...userInfo, state: event.target.value})}
          />
      </div>
      <div>
        <input className="btn" type="submit" name="submit" value="Register" />
      </div>
    </form>
  );
}

export default RegisterForm;
