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
import { useSelector } from 'react-redux';
import { useEffect } from 'react';


function VeteranPage() {
  const user = useSelector((store) => store.user);
  const {id} = useParams();
  useEffect(() => {
    
  },[id])

  return (
    <div>
      <p>Welcome, {user.username}</p>
      <div className="accordionBackground">
        <Accordion>
          <AccordionSummary
            expandIcon={<ExpandMoreIcon />}
            aria-controls="panel1a-content"
            id="panel1a-header"
          >
            <Typography>Edit Profile</Typography>
          </AccordionSummary>
          <AccordionDetails>
            <ProfileEditPage page={'edit'}/>
          </AccordionDetails>
        </Accordion>
        <Accordion>
          <AccordionSummary
            expandIcon={<ExpandMoreIcon />}
            aria-controls="panel2a-content"
            id="panel2a-header"
          >
            <Typography>Current Jobs</Typography>
          </AccordionSummary>
          <AccordionDetails>
            <CurrentJob />
          </AccordionDetails>
        </Accordion>
      </div>
    </div>
  );
}

export default VeteranPage;