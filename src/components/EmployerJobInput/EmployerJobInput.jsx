import React from 'react';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import Select from '@mui/material/Select';
import MenuItem from '@mui/material/MenuItem';
import { useState } from 'react';
import './EmployerJobInput.css';


function EmployerJobInput() {
    const [jobInputData, setJobInputData] = useState({name: '', description: '', city: '', state: '', company: '', skills: []});
    const [skills, setSkills] = useState('');

    const handleChange = () => {
        console.log('changes being made', jobInputData);
    }

    return (
    <div>
        <p>Job Input Form</p>
        <form>
            <div className="inputFields">
                <TextField id="outlined-basic" label="Job Name" variant="outlined" />
                <br></br>
                <TextField id="outlined-basic" label="Job Description" variant="outlined" />
                <br></br>
                <TextField id="outlined-basic" label="City" variant="outlined" />
                <br></br>
                <TextField id="outlined-basic" label="State" variant="outlined" />
                <br></br>
                <TextField id="outlined-basic" label="Company Name" variant="outlined" />
            </div>
            <div className="dropdown">
                <Select
                    labelId="demo-simple-select-label"
                    id="demo-simple-select"
                    value={jobInputData.name}
                    label="Job Name"
                    name="name"
                    onChange={handleChange}
                >
                    <MenuItem value={'admin'}>Admin</MenuItem>
                    <MenuItem value={'communication'}>Communication</MenuItem>
                    <MenuItem value={'language'}>Language</MenuItem>
                    <MenuItem value={'teamwork'}>Teamwork</MenuItem>
                    <MenuItem value={'problem solving'}>Problem Solving</MenuItem>
                </Select>
            </div>
            <Button variant="contained" color="primary" type="Submit">
                Submit
            </Button>
        </form>
    </div>
  )
}

export default EmployerJobInput;