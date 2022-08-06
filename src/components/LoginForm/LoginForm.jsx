import React, { useState } from 'react';
import { useDispatch } from 'react-redux';
import {useSelector} from 'react-redux';
import { Link, useHistory } from 'react-router-dom';
import Button from '@mui/material/Button';
import { createTheme, ThemeProvider } from '@mui/material/styles';
import { common } from '@material-ui/core/colors';
import './LoginForm.css';

//Allows all users to login to one main login form.
//This component is connected to the LoginPage.jsx.
function LoginForm() {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const errors = useSelector(store => store.errors);
  const user = useSelector((store) => store.user);
  const dispatch = useDispatch();
  const history = useHistory();

  const login = (event) => {
    event.preventDefault();

    if (username && password) {
      dispatch({
        type: 'LOGIN',
        payload: {
          username: username,
          password: password,
        },
      });
    } else {
      dispatch({ type: 'LOGIN_INPUT_ERROR' });
    }
  }; // end login

  const backButton = () => {
    history.push(`/`);
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
    <form className="formPanel" onSubmit={login}>
      <ThemeProvider theme={theme}>
        <Button className="employerDetailsBackBtn" variant="contained" onClick={backButton}>Back</Button>
      </ThemeProvider>
      <h2>Login</h2>
      {errors.loginMessage && (
        <h3 className="alert" role="alert">
          {errors.loginMessage}
        </h3>
      )}
      <div>
        <label htmlFor="username">
          Username:
          <input
            type="text"
            name="username"
            required
            value={username}
            onChange={(event) => setUsername(event.target.value)}
          />
        </label>
      </div>
      <div>
        <label htmlFor="password">
          Password:
          <input
            type="password"
            name="password"
            required
            value={password}
            onChange={(event) => setPassword(event.target.value)}
          />
        </label>
      </div>
      <div>
        <ThemeProvider theme={theme}>
          <Button className="loginBtn" variant="contained" type="submit" onClick={login}>Submit</Button>
        </ThemeProvider>
      </div>
    </form>
  );
}

export default LoginForm;