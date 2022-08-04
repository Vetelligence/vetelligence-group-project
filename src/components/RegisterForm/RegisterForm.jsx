import React, { useState, useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import TextField from '@mui/material/TextField';


function RegisterForm({page}) {
  const errors = useSelector((store) => store.errors);
  const user = useSelector(store => store.user)
  const dispatch = useDispatch();
  const [userInfo, setUserInfo] = useState({username: '', password: '', email: '', phoneNumber: '', city: '', state: '', firstName: '', lastName: '', userType: 'admin'})


  useEffect(() => {
    if(page === 'edit'){
      setUserInfo({...userInfo, firstName: user.first_name, lastName: user.last_name, city: user.city, state: user.state, email: user.email, phoneNumber: user.phone_number})
    }
    console.log('This is page', page)
  }, [])




  const registerUser = (event) => {
    event.preventDefault();
    if(page === 'edit'){
      dispatch({
        type: 'UPDATE_USER_INFO',
        payload: userInfo
      })
    }
    else{
      dispatch({
        type: 'REGISTER',
        payload: userInfo
      });
    }
  }; // end registerUser

  return (
    <form className="formPanel" onSubmit={registerUser}>
      
      {errors.registrationMessage && (
        <h3 className="alert" role="alert">
          {errors.registrationMessage}
        </h3>
      )}
      <div>
          {page ==='edit'? <></>:<TextField
            type="text"
            name="username"
            label="username"
            value={userInfo.username}
            required
            onChange={(event) => setUserInfo({...userInfo, username:event.target.value})}
          />}
      </div>
      <div>
          {page ==='edit'? <></>:<TextField
            type="password"
            name="password"
            label="password"
            value={userInfo.password}
            required
            onChange={(event) => setUserInfo({...userInfo, password: event.target.value})}
          />}
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
            value={userInfo.email}
            required
            onChange={(event) => setUserInfo({...userInfo, email: event.target.value})}
          />
      </div>
      <div>
          <TextField
            type="text"
            name="phoneNumber"
            label="Phone Number"
            value={userInfo.phoneNumber}
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
        {
         page === 'edit'?  
         <input className="btn" type="submit" name="submit" value="Update" />
         :
         <input className="btn" type="submit" name="submit" value="Register" />
        }
      </div>
    </form>
  );
}

export default RegisterForm;
