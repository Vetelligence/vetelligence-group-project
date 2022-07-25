import React, { useState } from 'react';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import Box from '@mui/material/Box';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import { useHistory, useDispatch } from 'react-router-dom';


function EmployerIntakeForm(){

    const history = useHistory();
    const dispatch = useDispatch();

    const backButton = () => {
        history.push('/')
    }

    

    return (
        <>
        <Button variant="outlined" onClick={backButton}>Back</Button>

        <form>
        <TextField id="outlined-basic" label="First Name" variant="outlined" />
        <br></br>
        <TextField id="outlined-basic" label="Last Name" variant="outlined" />
        <br></br>
        <TextField id="outlined-basic" label="E-mail" variant="outlined" />
        <br></br>
        <TextField id="outlined-basic" label="Phone Number" variant="outlined" />
        <br></br>
        <TextField id="outlined-basic" label="City" variant="outlined" />
        <br></br>
        <TextField id="outlined-basic" label="State" variant="outlined" />
        <br></br>
        <TextField id="outlined-basic" label="Username" variant="outlined" />
        <br></br>
        <TextField id="outlined-basic" label="Password" variant="outlined" />
        <br></br>

        <Button variant="contained" color="primary" type="Submit">
            Submit
        </Button>


        </form>
        
        </>
    )

}



export default EmployerIntakeForm;