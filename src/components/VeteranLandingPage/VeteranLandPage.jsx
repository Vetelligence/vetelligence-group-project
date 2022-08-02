import React from 'react';
import { Paper, Button } from '@mui/material'
import { useHistory} from 'react-router-dom';
import ArrowBackIosIcon from '@material-ui/icons/ArrowBackIos';
import ArrowForwardIosIcon from '@material-ui/icons/ArrowForwardIos';
import { useSelector } from 'react-redux';
import { useDispatch } from 'react-redux';
import { useEffect } from 'react';
import './VeteranLanding.css'

function VeteranLandingPage() {
    const dispatch = useDispatch();
    const history = useHistory();
    const jobs = useSelector((store) => store.job);

    useEffect(() => {
        dispatch({
          type: 'FETCH_TOP_JOBS',
        })
      }, []); 

    function Login() {
        history.push('/veteran-intake');
    }

    return (
        <div>
            <br></br>
            <h4>Jobs Available to Veterans</h4>
            <div className="carousel">
                <Button><ArrowBackIosIcon/></Button>
                {jobs && jobs.map((job) => (
                    <div className="carouselItem" key={job.id}>
                        <p>Job Title: {job.job_name}</p>
                        <p>Job Description: {job.job_description}</p>
                    </div>
                ))}
                <Button><ArrowForwardIosIcon/></Button>
            </div>
            <br></br>
            <Button className="btn" variant="outlined" color="primary" >
                Continue As Guest
            </Button>
            <br></br>
            <Button className="btn" variant="outlined" color="primary" onClick={Login}>
                Login / Create Account
            </Button>
        </div>
    );
}

export default VeteranLandingPage; 