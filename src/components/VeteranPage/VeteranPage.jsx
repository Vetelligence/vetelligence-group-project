import React from 'react';
import CurrentJob from '../CurrentJob/CurrentJob';
import { Link, useParams } from 'react-router-dom';
import './VeteranPage.css';
import { useHistory } from 'react-router-dom';
import { useSelector, useDispatch } from 'react-redux';
import { useEffect } from 'react';
import Button from '@mui/material/Button';
import { createTheme, ThemeProvider } from '@mui/material/styles';
import { common } from '@material-ui/core/colors';

function VeteranPage() {
  const history = useHistory();
  const dispatch = useDispatch();
  const user = useSelector((store) => store.user);
  const {id} = useParams();
  const editButton = () => {
    history.push(`/veteran/${user.id}/edit-profile`);
  }

  useEffect(() => {
    dispatch({
      type: 'FETCH_VETS_JOBS'
    })
  },[]);

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
    <div className="veteranDash">
      <h2>Welcome, {user.username}</h2>
      <div className="profileInfo">
        <p className="profileText">Profile Info</p>
        <p className="profileText">Name: {user.first_name} {user.last_name}</p>
        <p className="profileText">Phone: {user.phone_number}</p>
        <p className="profileText">Email: {user.email}</p>
      </div>
      <br></br>
      <div className="accordionBackground">
      <ThemeProvider theme={theme}>
        <Button className="employerDetailsBackBtn" variant="contained" onClick={editButton}>Edit Profile</Button>
      </ThemeProvider>
      <CurrentJob/>
      </div>
    </div>
  );
}

export default VeteranPage;