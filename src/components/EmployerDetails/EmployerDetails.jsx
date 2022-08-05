import { useEffect } from 'react';
import './EmployerDetails.css';
import { useParams } from 'react-router-dom';
import { useHistory} from 'react-router-dom';
import { useDispatch, useSelector } from 'react-redux';
import { MatchedCandidateListItem } from '../MatchedCandidatesListItem/MatchedCandidateListItem';
import Button from '@mui/material/Button';
import { createTheme, ThemeProvider } from '@mui/material/styles';
import { common } from '@material-ui/core/colors';

function EmployerDetails() {
  const history = useHistory();
  const {id} = useParams();
  const dispatch = useDispatch();
  const job = useSelector(store => store.currentJob);
  const backButton = () => {
    history.push('/employer/:id')
  }

  useEffect(() => {
    dispatch({
      type: 'FETCH_CURRENT_JOB',
      payload: {id: id}
    })
  }, [id]);

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
    <div className="employerDetailsPage">
      <ThemeProvider theme={theme}>
        <Button className="employerDetailsBackBtn" variant="contained" onClick={backButton}>Back</Button>
      </ThemeProvider>
      <div className='job-details-card'>
        <h2>{job.job && job.job.company}</h2>
        <br></br>
        <h3 className="employerDetailsTitle">Job Title:</h3>
        <p>{ job.job && job.job.job_name}</p>
        <br></br>
        <h3 className="employerDetailsTitle">Job Description:</h3>
        <p>{job.job && job.job.job_description}</p>
        <br></br>
        <div className='current-job-skills'>
          <h3 className="employerDetailsTitle">Skills:</h3>
          {job.job && job.job.skills.map(s => <p key={s} className='details-skills'>{s}</p>)}
        </div>
      </div>
      <div className="employeeDetailsData">
        <p className="employeeDataText">Current Matched Candidates:</p>
        <div className="employeeCard">
          {job.candidates && job.candidates.map(vet => <MatchedCandidateListItem key={vet.id} vet={vet}/>)}
        </div>
      </div>
    </div>
  );
}

export default EmployerDetails;