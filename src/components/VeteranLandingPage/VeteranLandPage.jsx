import React from 'react';
// import Carousel from 'react-material-ui-carousel'
import { Paper, Button } from '@mui/material'
import { useHistory} from 'react-router-dom';



function VeteranLandingPage(){

    const history = useHistory();

    function Login(){
        history.push('/login')
    }

      


    return(
        <>
        <br></br>
        <h4>Recent Jobs Available to Veterans </h4>

        <br></br>




        <Button className="btn" variant="outlined" color="primary" >
            Continue As Guest
        </Button>

        <br></br>
        <br></br>
        <Button className="btn" variant="outlined" color="primary" onClick={Login}>
            Login / Create Account
        </Button>




        </>

        
    )


}

export default VeteranLandingPage; 