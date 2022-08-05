import React from 'react';
import { Link } from 'react-router-dom';
import { useSelector } from 'react-redux';
import { useEffect } from 'react';
import { useDispatch } from 'react-redux';
import { Button } from '@mui/material';
import { createTheme, ThemeProvider } from '@mui/material/styles';
import { common } from '@material-ui/core/colors';
import { useHistory } from 'react-router-dom';
import './EmployerPage.css';
import { JobListItem } from '../JobListItem/JobListItem';

//This component shows the dashboard for the given logged in Employer/Recruiter.
//This component connects to the JobListItem.jsx to display current jobs by Employer id.
function EmployerPage() {
  const history = useHistory();
  const dispatch = useDispatch();
  const user = useSelector((store) => store.user);
  const job = useSelector((store) => store.job);

  useEffect(() => {
    dispatch({
      type: 'FETCH_JOB'
    });
  }, [user]);

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

  const jobInputButton = () => {
    history.push('/jobInput')
  }

  return (
    <div className="employerView">
      <br></br>
      <br></br>
      <div className="employerViewBoxes">
        <div className="profileData">
          <p>Name: {user.first_name} {user.last_name}</p>
          <p>Phone: {user.phone_number}</p>
          <p>Email: {user.email}</p>
          <p>{user.city}, {user.state}</p>
        </div>
        <div className="jobsData">
          <p className="jobsDataText">Current Jobs:</p>
          {job[0] && job.map(jobs => <JobListItem key={jobs.id} jobs={jobs}/>)}
        </div>
      </div>
      <div className="addJobButtonDiv">
        <ThemeProvider theme={theme}>
          <Button variant="contained" className="addJobBtn" onClick={jobInputButton}>Add Job</Button>
        </ThemeProvider>
      </div>
    </div>
  );
}

export default EmployerPage;