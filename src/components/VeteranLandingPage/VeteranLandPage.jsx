import React from 'react';
import { Paper, Button } from '@mui/material'
import { useHistory} from 'react-router-dom';
import ArrowBackIosIcon from '@material-ui/icons/ArrowBackIos';
import ArrowForwardIosIcon from '@material-ui/icons/ArrowForwardIos';
import { useSelector } from 'react-redux';
import { useDispatch } from 'react-redux';
import { useEffect, useState } from 'react';
import './VeteranLanding.css'

function VeteranLandingPage() {
    const dispatch = useDispatch();
    const history = useHistory();
    const jobs = useSelector((store) => store.job);
    const [index, setIndex] = useState(0)
    console.log(jobs, ">>>>>>>>>>")
    useEffect(() => {
        dispatch({
          type: 'FETCH_TOP_JOBS',
        })
      }, [index]); 

    function Login() {
        history.push('/veteran-intake');
    }

    return (
        <div>
            <br></br>
            <h4>Jobs Available to Veterans</h4>
            <div className="carousel">
                <Button
                    onClick={() => 
                        index>0 ?
                        setIndex(index - 1)
                        :
                        setIndex(4)
                    }>
                    <ArrowBackIosIcon/>
                </Button>
                <div className="carouselItem" key={jobs[0] && jobs[index].id}>
                    <p>Job Title: {jobs[0] && jobs[index].job_name}</p>
                    <p>Job Description: {jobs[0] && jobs[index].job_description}</p>
                </div>
                <Button
                    onClick={() =>
                        index<4 ?
                        setIndex(index + 1)
                        :
                        setIndex(0)
                    }>
                    <ArrowForwardIosIcon/>
                </Button>
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