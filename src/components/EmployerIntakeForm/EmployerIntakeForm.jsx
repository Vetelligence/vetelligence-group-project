import React, { useState } from 'react';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import Box from '@mui/material/Box';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import { useHistory} from 'react-router-dom';
import { useDispatch } from 'react-redux';

function EmployerIntakeForm(){

    const history = useHistory();
    const dispatch = useDispatch();

    const backButton = () => {
        history.push('/')
    }

    const [firstName, setFirstName] = useState('');
    const [lastName, setLastName] = useState('');
    const [company, setCompany] = useState('');
    const [email, setEmail] = useState('');
    const [phoneNumber, setPhoneNumber] = useState('');
    const [city, setCity] = useState('');
    const [state, setState] = useState('');
    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');

    const handleSubmit = (evt) => {
        const employerInfo = {
            firstName: firstName,
            lastName: lastName,
            company: company,
            email: email,
            phoneNumber: phoneNumber,
            city: city,
            state: state,
            username: username,
            password, password,
        }

        evt.preventDefault();

        dispatch({
            type: "SET_EMPLOYER_INFO",
            payload: employerInfo
        })

        
        

    }

    return (
        <>
        <Button variant="outlined" onClick={backButton}>Back</Button>

        <form onSubmit={handleSubmit}>

        <TextField id="outlined-basic" label="First Name" variant="outlined" onChange={evt => {setFirstName(evt.target.value)}}/>
        <br></br>
        <TextField id="outlined-basic" label="Last Name" variant="outlined" onChange={evt => {setLastName(evt.target.value)}}/>
        <br></br>
        <TextField id="outlined-basic" label="Company" variant="outlined" onChange={evt => {setCompany(evt.target.value)}}/>
        <br></br>
        <TextField id="outlined-basic" label="E-mail" variant="outlined" onChange={evt => {setEmail(evt.target.value)}}/>
        <br></br>
        <TextField id="outlined-basic" label="Phone Number" variant="outlined" onChange={evt => {setPhoneNumber(evt.target.value)}}/>
        <br></br>
        <TextField id="outlined-basic" label="City" variant="outlined" onChange={evt => {setCity(evt.target.value)}}/>
        <br></br>
        <TextField id="outlined-basic" label="State" variant="outlined" onChange={evt => {setState(evt.target.value)}}/>
        <br></br>
        <TextField id="outlined-basic" label="Username" variant="outlined" onChange={evt => {setUsername(evt.target.value)}}/>
        <br></br>
        <TextField id="outlined-basic" label="Password" variant="outlined" onChange={evt => {setPassword(evt.target.value)}}/>
        <br></br>

        <Button variant="contained" color="primary" type="submit">
            Submit
        </Button>


        </form>
        
        </>
    )

}



export default EmployerIntakeForm;