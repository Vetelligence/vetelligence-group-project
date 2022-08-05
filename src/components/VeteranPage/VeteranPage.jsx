import React from 'react';
import Accordion from '@mui/material/Accordion';
import AccordionSummary from '@mui/material/AccordionSummary';
import AccordionDetails from '@mui/material/AccordionDetails';
import Typography from '@mui/material/Typography';
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';
import CurrentJob from '../CurrentJob/CurrentJob';
import { Link, useParams } from 'react-router-dom';
import './VeteranPage.css';
import { ProfileEditPage } from '../ProfileEditPage/ProfileEditPage';
import { useSelector, useDispatch } from 'react-redux';
import { useEffect } from 'react';


function VeteranPage() {
  const dispatch = useDispatch();
  const user = useSelector((store) => store.user);
  const {id} = useParams();
  useEffect(() => {
    dispatch({
      type: 'FETCH_VETS_JOBS'
    })
  },[])

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
          <Link to={`/veteran/${user.id}/edit-profile`}>Edit Profile</Link>
            <CurrentJob />
      </div>
    </div>
  );
}

export default VeteranPage;