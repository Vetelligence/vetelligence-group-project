import React from 'react';
import Accordion from '@mui/material/Accordion';
import AccordionSummary from '@mui/material/AccordionSummary';
import AccordionDetails from '@mui/material/AccordionDetails';
import Typography from '@mui/material/Typography';
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';
import { Link } from 'react-router-dom';
import './VeteranPage.css';

// CUSTOM COMPONENTS
import RegisterForm from '../AdminRegisterForm/AdminRegisterForm';
import { ProfileEditPage } from '../ProfileEditPage/ProfileEditPage';

function VeteranPage() {


  return (

    <>
    <div>
        <h4>Welcome, Veterans!</h4>
    
        <br></br>

      <Link to="/veteran-intake"> <h4>Sign Up</h4></Link>
    </div>
    

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
            <ProfileEditPage />
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
            <Typography>
              These are the current jobs. We need a GET.
            </Typography>
          </AccordionDetails>
        </Accordion>
        <Accordion>
          <AccordionSummary
            expandIcon={<ExpandMoreIcon />}
            aria-controls="panel3a-content"
            id="panel3a-header"
          >
            <Typography>Search Jobs</Typography>
          </AccordionSummary>
          <AccordionDetails>
            <Typography>
              Add Search functionality
            </Typography>
          </AccordionDetails>
        </Accordion>
      </div>
</>
  );
}

export default VeteranPage;