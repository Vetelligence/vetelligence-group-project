import React, { useState } from 'react';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import Box from '@mui/material/Box';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';



function VeteranIntakeForm(){

const [branch, setBranch] = React.useState('');
const [MOS, setMOS ] = React.useState('');
const [rank, setRank ] = React.useState('');


const handleChange = (event) => {
    setBranch(event.target.value)
    }

const handleChange2 = (event) => {
    setRank(event.target.value)
    }
    
const handleChange3 = (event) => {
    setMOS(event.target.value)
    }

return (
    <>

        <Button variant="outlined">Back</Button>
        <br></br>
        
        <br></br>
        <form>
        <TextField id="outlined-basic" label="First Name" variant="outlined" />
        <TextField id="outlined-basic" label="Last Name" variant="outlined" />
        <TextField id="outlined-basic" label="E-mail" variant="outlined" />
        <TextField id="outlined-basic" label="City" variant="outlined" />
        <TextField id="outlined-basic" label="State" variant="outlined" />
        <TextField id="outlined-basic" label="Discharged Date" variant="outlined" />
        
        <FormControl fullWidth>
        <InputLabel id="demo-simple-select-label">Branch</InputLabel>
        <Select
          labelId="demo-simple-select-label"
          id="demo-simple-select"
          value={branch}
          label="branch"
          onChange={handleChange}
        >
          <MenuItem value={'Coast Guard'}>Coast Guard</MenuItem>
          <MenuItem value={'Marines'}>Marines</MenuItem>
          <MenuItem value={'Navy'}>Navy</MenuItem>
          <MenuItem value={'Army'}>Army</MenuItem>
          <MenuItem value={'Air Force'}>Air Force</MenuItem>
        </Select>
      </FormControl>

      <FormControl fullWidth>
        <InputLabel id="demo-simple-select-label">Rank</InputLabel>
        <Select
          labelId="demo-simple-select-label"
          id="demo-simple-select"
          value={rank}
          label="Rank"
          onChange={handleChange2}
        >
          <MenuItem value={'General Officer'}>General Officer</MenuItem>
          <MenuItem value={'Lieutenant'}>Lieutenant</MenuItem>
          <MenuItem value={'Major'}>Navy</MenuItem>
          <MenuItem value={'Captain'}>Army</MenuItem>
          <MenuItem value={'Corporal'}>Air Force</MenuItem>
        </Select>
      </FormControl>

      <FormControl fullWidth>
        <InputLabel id="demo-simple-select-label">MOS</InputLabel>
        <Select
          labelId="demo-simple-select-label"
          id="demo-simple-select"
          value={MOS}
          label="MOS"
          onChange={handleChange3}
        >
          <MenuItem value={'11B Infantry'}>11B Infantry</MenuItem>
          <MenuItem value={'12B Engineer'}>12B Engineer</MenuItem>
          <MenuItem value={'13J Mechanic'}>13J Mechanic</MenuItem>
          <MenuItem value={'15P Aviation Operation Specialist'}>15P Aviation Operation Specialist</MenuItem>
          <MenuItem value={'36B Financial Management Technician'}>36B Financial Management Technician</MenuItem>
        </Select>
      </FormControl>

      <Button variant="contained" color="primary" type="Submit">
            Submit
        </Button>
      </form>

    </>
)



}


export default VeteranIntakeForm; 