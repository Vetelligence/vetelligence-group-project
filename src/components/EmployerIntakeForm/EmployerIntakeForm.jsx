import React, { useState } from 'react';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import { createTheme, ThemeProvider } from '@mui/material/styles';
import { common } from '@material-ui/core/colors';
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
    const [userType, setUserType] = useState('employer');

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
            password: password,
            userType: userType,
        }

        evt.preventDefault();

        dispatch({
            type: 'REGISTER',
            payload: employerInfo
        });
    }

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
        <div className="intakeForm">
            <ThemeProvider theme={theme}>
                <Button className="intakeBackBtn" variant="contained" onClick={backButton}>Back</Button>
            </ThemeProvider>
            <p>This form is designed to make the lives of Employers and Recruiters easier. You're just a few clicks away from having a list of Veterans that match the skillset you're looking for in your next hire!</p>
            <p>Once you submit your information you'll be contacted for approval on the site. Once approved you'll have access to post jobs and view Veterans available for hire at your business!</p>
            <br></br>
            <form className="theInputs" onSubmit={handleSubmit}>
                <TextField label="First Name" variant="outlined" onChange={evt => {setFirstName(evt.target.value)}}/>
                <br></br>
                <TextField  label="Last Name" variant="outlined" onChange={evt => {setLastName(evt.target.value)}}/>
                <br></br>
                <TextField  label="Company" variant="outlined" onChange={evt => {setCompany(evt.target.value)}}/>
                <br></br>
                <TextField  label="E-mail" variant="outlined" onChange={evt => {setEmail(evt.target.value)}}/>
                <br></br>
                <TextField  label="Phone Number" variant="outlined" onChange={evt => {setPhoneNumber(evt.target.value)}}/>
                <br></br>
                <TextField  label="City" variant="outlined" onChange={evt => {setCity(evt.target.value)}}/>
                <br></br>
                <TextField  label="State" variant="outlined" onChange={evt => {setState(evt.target.value)}}/>
                <br></br>
                <TextField  label="Username" variant="outlined" onChange={evt => {setUsername(evt.target.value)}}/>
                <br></br>
                <TextField  label="Password" variant="outlined" type="password" onChange={evt => {setPassword(evt.target.value)}}/>
                <br></br>
                <br></br>
                <ThemeProvider theme={theme}>
                    <Button variant="contained" color="primary" type="submit">
                        Submit
                    </Button>
                </ThemeProvider>
            </form>  
        </div>
    );
}

export default EmployerIntakeForm;