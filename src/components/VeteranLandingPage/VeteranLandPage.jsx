import React from 'react';
// import Carousel from 'react-material-ui-carousel'
import { Paper, Button } from '@mui/material'
import { useHistory} from 'react-router-dom';
import { useSelector } from 'react-redux';
import { Link } from 'react-router-dom';

function VeteranLandingPage(){
    const veterans = useSelector((store) => (store.veteran));
    const jobs = useSelector((store) => (store.job))
    const history = useHistory();

    return(
        <div>
            <div>
                <Link to="/home">
                    <Button className="btn" variant="outlined" color="primary">
                        Back
                    </Button>
                </Link>
                <p>Recent Veteran Hires:</p>
            </div>
            <div>
                <Link to="/veteran-intake">
                    <Button className="btn" variant="outlined" color="primary">
                        Create Account
                    </Button>
                </Link>
                <br></br>
                <Link to="/login">
                    <Button className="btn" variant="outlined" color="primary">
                        Login
                    </Button>
                </Link>
            </div>
        </div>
    )
}

export default VeteranLandingPage; 