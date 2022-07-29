import React, { useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import Box from '@mui/material/Box';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';



function VeteranIntakeForm() {
  const dispatch = useDispatch();
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
      phone:'',
      city: '',
      state: ''
  });

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
      phone:'',
      city: '',
      state: ''
    });

  }

  return (
    <>

      <Button variant="outlined">Back</Button>
      <br></br>

      <br></br>
      <form onSubmit={submit}>

        <TextField onChange={handleChange} value={intakeData.username}  name="username" label="Username" variant="outlined" />
        <br></br>
        <TextField onChange={handleChange} value={intakeData.password}  name="password" label="Password" variant="outlined" />
        <br></br>
        <TextField onChange={handleChange} value={intakeData.firstName} name="firstName" label="First Name" variant="outlined" />
        <br></br>
        <TextField onChange={handleChange} value={intakeData.lastName} name="lastName" label="Last Name" variant="outlined" />
        <br></br>
        <TextField onChange={handleChange} value={intakeData.email} name="email" label="E-mail" variant="outlined" />
        <br></br>
        <TextField onChange={handleChange} value={intakeData.phone} name="phone" label="Phone" variant="outlined" />
        <br></br>
        <TextField onChange={handleChange} value={intakeData.city} name="city" label="City" variant="outlined" />
        <br></br>
        <TextField onChange={handleChange} value={intakeData.state} name="state" label="State" variant="outlined" />

        <br></br>


        <FormControl fullWidth>
          <InputLabel id="demo-simple-select-label">Branch</InputLabel>
          <Select
            labelId="demo-simple-select-label"
            id="demo-simple-select"
            value={intakeData.branch}
            label="branch"
            name="branch"
            onChange={handleChange}
          >
            <MenuItem value={'Coast Guard'}>Coast Guard</MenuItem>
            <MenuItem value={'Marine Corps'}>Marine Corps</MenuItem>
            <MenuItem value={'Navy'}>Navy</MenuItem>
            <MenuItem value={'Army'}>Army</MenuItem>
            <MenuItem value={'Air Force'}>Air Force</MenuItem>
          </Select>
        </FormControl>




        {intakeData.branch && <FormControl fullWidth>
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

        <Button variant="contained" color="primary" type="Submit">
          Submit
        </Button>
      </form>

    </>
  )



}


export default VeteranIntakeForm; 