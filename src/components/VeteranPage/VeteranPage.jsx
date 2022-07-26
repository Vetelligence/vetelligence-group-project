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

function VeteranPage() {


  return (
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
            <Typography>
              Profile Info We need a GET
            </Typography>
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
  );
}

export default VeteranPage;