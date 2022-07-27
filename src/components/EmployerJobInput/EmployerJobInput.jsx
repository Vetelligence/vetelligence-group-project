import React from 'react';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import Select from '@mui/material/Select';
import MenuItem from '@mui/material/MenuItem';
import { useState } from 'react';
import { useSelector } from 'react-redux';
import { useDispatch } from 'react-redux';
import { useEffect } from 'react';
import './EmployerJobInput.css';


function EmployerJobInput() {
    const dispatch = useDispatch();
    const skills = useSelector((store) => store.skills);
    const [jobInputData, setJobInputData] = useState({name: '', description: '', city: '', state: '', company: '', skills: []});
    const [newSkills, setNewSkills] = useState('');

    const handleChange = (evt) => {
        console.log('changes being made');

        setNewSkills([...newSkills, evt.target.value]);
    }

    useEffect(() => {
        dispatch({
            type: 'FETCH_SKILLS'
        });
    }, []);

    return (
    <div> 
        <p>Helpful hints: <br></br> You will need the job title, job description, the city and state the job is located, the company name, and 5 skills associated with the job (these are chosen from a drop down). Just pick the closest 5 options from the drop down, they don't need to be exact.</p>  
        <div>
            <p>Job Input Form</p>
            <form>
                <div className="inputFields">
                    <TextField id="outlined-basic" label="Job Title" variant="outlined" value={jobInputData.name}/>
                    <br></br>
                    <TextField id="outlined-basic" label="Job Description" variant="outlined" value={jobInputData.description}/>
                    <br></br>
                    <TextField id="outlined-basic" label="City" variant="outlined" value={jobInputData.city}/>
                    <br></br>
                    <TextField id="outlined-basic" label="State" variant="outlined" value={jobInputData.state}/>
                    <br></br>
                    <TextField id="outlined-basic" label="Company Name" variant="outlined" value={jobInputData.company}/>
                </div>
                <div className="dropdown">
                    <Select
                        labelId="demo-basic-select-label"
                        id="demo-basic-select"
                        value={newSkills}
                        onChange={handleChange}
                    >
                        {skills && skills.map((skill) => (
                            <MenuItem key={skill.id} value={skill.skill_name}>{skill.skill_name}</MenuItem>
                        ))}

                    </Select>
                    <p>Current Selected Skills:
                        <br></br>1 {newSkills[0]}
                        <br></br>2 {newSkills[1]}
                        <br></br>3 {newSkills[2]}
                        <br></br>4 {newSkills[3]}
                        <br></br>5 {newSkills[4]}
                    </p>
                </div>
                <Button variant="contained" color="primary" type="Submit">
                    Submit
                </Button>
            </form>
        </div>
    </div> 
  )
}

export default EmployerJobInput;