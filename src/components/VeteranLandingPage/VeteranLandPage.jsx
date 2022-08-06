import React from 'react';
import { Paper, Button } from '@mui/material'
import { useHistory} from 'react-router-dom';
import ArrowBackIosIcon from '@material-ui/icons/ArrowBackIos';
import ArrowForwardIosIcon from '@material-ui/icons/ArrowForwardIos';
import { createTheme, ThemeProvider } from '@mui/material/styles';
import { common } from '@material-ui/core/colors';
import { useSelector } from 'react-redux';
import { useDispatch } from 'react-redux';
import { useEffect, useState } from 'react';
import './VeteranLanding.css'

//This is the main landing page for Veterans accessible to any Veteran not logged in.
function VeteranLandingPage() {
    const dispatch = useDispatch();
    const history = useHistory();
    const jobs = useSelector((store) => store.job);
    const [index, setIndex] = useState(0)

    useEffect(() => {
        dispatch({
          type: 'FETCH_TOP_JOBS',
        })
      }, [index]); 

    function Login() {history.push('/veteran-intake');}

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
        <div className="vetLandingPage">
            <br></br>
            <br></br>
            <h3 className="carouselTitle">Jobs Available to Veterans:</h3>
            <div className="carousel">
                <Button
                    onClick={() => 
                        index > 0 ?
                        setIndex(index - 1)
                        :
                        setIndex(4)
                    }>
                    <ArrowBackIosIcon style={{ color: common.white }}/>
                </Button>
                <div className="carouselItem" key={jobs[0] && jobs[index].id}>
                    <p><strong>Title:</strong> {jobs[0] && jobs[index].job_name}</p>
                    <p><strong>Description:</strong> {jobs[0] && jobs[index].job_description}</p>
                </div>
                <Button
                    onClick={() =>
                        index < 4 ?
                        setIndex(index + 1)
                        :
                        setIndex(0)
                    }>
                    <ArrowForwardIosIcon style={{ color: common.white }}/>
                </Button>
            </div>
            <div className="veteranCopy">
                <p className="titleCopy">Approaching ETS</p>
                <p>We begin working with service members on their engram up to 1 year before discharge so that by the time you separate you are in a better positions for employment.</p>
                <p className="titleCopy">Recently Separated</p>
                <p>Exited the service already? That’s fine. After completing your intake, we will prioritize your placement.</p>
                <p className="titleCopy">Currently Discharged</p>
                <p>Looking to find something new or having difficulty? We will work with you to find a rewarding and meaningful opportunity.</p>
            </div>
            <div className="vetLandingBtn">
                <p className="readyCopy">Ready to find a job?</p>
                <ThemeProvider theme={theme}>
                    <Button className="vetLandingBtn" variant="contained" onClick={Login}>
                        Login / Create Account
                    </Button>
                </ThemeProvider>
            </div>
        </div>
    );
}

export default VeteranLandingPage; 