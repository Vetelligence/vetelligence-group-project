import React, { useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import { createTheme, ThemeProvider } from '@mui/material/styles';
import { common } from '@material-ui/core/colors';
import { useHistory } from 'react-router-dom';
import './VeteranIntakeForm.css';

function VeteranIntakeForm() {
  const dispatch = useDispatch();
  const history = useHistory();
  const user = useSelector(store => store.user)
  const mosData = useSelector(store => store.intake.mosForBranch)
  const [intakeData, setIntakeData] = useState({
    userType: 'veteran',
      branch: '',
      mos: '',
      username:'',
      password: '',
      firstName: '',
      lastName: '',
      email: '',
      phoneNumber:'',
      city: '',
      state: ''
  });
  const backButton = () => {
    history.push("/");
  }

  function handleChange(event) {
    setIntakeData({
      ...intakeData,
      [event.target.name]: event.target.value,
    });

    if (event.target.name === 'branch') {
      dispatch({
        type: 'FETCH_MOS',
        payload: { branch: event.target.value }
      });
    }
  }

  function submit(event) {
    event.preventDefault();
    console.log(intakeData);

    dispatch({
      type: 'REGISTER',
      payload: intakeData
    });

    setIntakeData({
      userType: 'veteran',
      branch: '',
      mos: '',
      username:'',
      password: '',
      firstName: '',
      lastName: '',
      email: '',
      phoneNumber:'',
      city: '',
      state: ''
    });
    setTimeout(() => {
      history.push(`/veteran/${user.id}`)
    }, 250)
  }

  function autoFill() {
    console.log("working");
    setIntakeData({
      userType: 'veteran',
      branch: '',
      mos: '',
      username:'courtneyazar',
      password: '123',
      firstName: 'Courtney',
      lastName: 'Azar',
      email: 'TheCourtney@aol.net',
      phoneNumber:'123-456-7890',
      city: 'Minneapolis',
      state: 'MN'
  })}

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
      <div className="theBtns">
        <span className="leftBtn">
          <ThemeProvider theme={theme}>
            <Button variant="contained" style={{ color: common.black }} className="intakeBackBtn" onClick={backButton}>Back</Button>
          </ThemeProvider>
        </span>
      </div>
      <p>Veterans: submitting this form will grant you access to employers ready to hire you for your skills received while in service. No need to apply to any positions!</p>
      <p>Your time in service provided you with skills employers are looking for in new employees. By picking your branch and MOS below, you'll be matched to available openings posted by employers. Employers will then have the ability to contact you for an interview and start the hiring process!</p>
      <p className="textAlignCenter" onClick={autoFill}>Ready to find your next job?</p>
      <form className="theInputs" onSubmit={submit}>
        <TextField onChange={handleChange} value={intakeData.username}  name="username" label="Username" variant="outlined" />
        <br></br>
        <TextField onChange={handleChange} value={intakeData.password} type="password"  name="password" label="Password" variant="outlined" />
        <br></br>
        <TextField onChange={handleChange} value={intakeData.firstName} name="firstName" label="First Name" variant="outlined" />
        <br></br>
        <TextField onChange={handleChange} value={intakeData.lastName} name="lastName" label="Last Name" variant="outlined" />
        <br></br>
        <TextField onChange={handleChange} value={intakeData.email} name="email" label="E-mail" variant="outlined" />
        <br></br>
        <TextField onChange={handleChange} value={intakeData.phoneNumber} name="phoneNumber" label="Phone" variant="outlined" />
        <br></br>
        <TextField onChange={handleChange} value={intakeData.city} name="city" label="City" variant="outlined" />
        <br></br>
        <TextField onChange={handleChange} value={intakeData.state} name="state" label="State" variant="outlined" />
        <br></br>
        <FormControl sx={{width:"194px"}}>
          <InputLabel id="demo-simple-select-label">Branch</InputLabel>
          <Select
            labelId="demo-simple-select-label"
            id="demo-simple-select"
            value={intakeData.branch}
            label="branch"
            name="branch"
            onChange={handleChange}
          >
            <MenuItem value={'Air Force'}>Air Force</MenuItem>
            <MenuItem value={'Army'}>Army</MenuItem>
            <MenuItem value={'Coast Guard'}>Coast Guard</MenuItem>
            <MenuItem value={'Marine Corps'}>Marine Corps</MenuItem>
            <MenuItem value={'Navy'}>Navy</MenuItem>
          </Select>
        </FormControl>
        {intakeData.branch && <FormControl sx={{width:"194px"}}>
            <InputLabel id="demo-simple-select-label">MOS</InputLabel>
            <Select
              labelId="demo-simple-select-label"
              id="demo-simple-select"
              value={intakeData.mos}
              label="MOS"
              name="mos"
              onChange={handleChange}
            >
              {mosData.map(mos => <MenuItem key={mos.id} value={mos.id}> {mos.mos} - {mos.name}</MenuItem>)}
            </Select>
          </FormControl>
        }
        <br></br>
        <br></br>
        <ThemeProvider theme={theme}>
          <Button variant="contained" color="primary" type="Submit">
            Submit
          </Button>
        </ThemeProvider>
      </form>
    </div>
  );
}

export default VeteranIntakeForm; 