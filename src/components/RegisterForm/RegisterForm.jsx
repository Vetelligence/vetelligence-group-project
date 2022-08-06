import React, { useState, useEffect } from 'react';
import { useHistory } from 'react-router-dom';
import { useDispatch, useSelector } from 'react-redux';
import TextField from '@mui/material/TextField';
import Button from '@mui/material/Button';
import { createTheme, ThemeProvider } from '@mui/material/styles';
import { common } from '@material-ui/core/colors';

//Veteran profile edit component connected to the ProfileEditPage.jsx
//This component allows Veterans to edit their profile info.
function RegisterForm({page}) {
  const history = useHistory();
  const errors = useSelector((store) => store.errors);
  const user = useSelector(store => store.user)
  const dispatch = useDispatch();
  const [userInfo, setUserInfo] = useState({username: '', password: '', email: '', phoneNumber: '', city: '', state: '', firstName: '', lastName: '', userType: 'admin'})

  useEffect(() => {
    if(page === 'edit'){
      setUserInfo({...userInfo, firstName: user.first_name, lastName: user.last_name, city: user.city, state: user.state, email: user.email, phoneNumber: user.phone_number, userType: 'veteran'})
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

  const backButton = () => {
    history.push(`/veteran/${user.id}`)
  }

  const theme = createTheme({
    palette: {
      primary: {
        main: common.white
      },
      secondary: {
        main: '#6C63FE',
        darker: '#4EC4DE'
      }
    }
  });

  return (
    <div>
      <ThemeProvider theme={theme}>
        <Button className="employerDetailsBackBtn" variant="contained" onClick={backButton}>Back</Button>
      </ThemeProvider>
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
    </div>
  );
}

export default RegisterForm;