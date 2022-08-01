import React from 'react';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import Select from '@mui/material/Select';
import MenuItem from '@mui/material/MenuItem';
import { useState } from 'react';
import { useSelector } from 'react-redux';
import { useDispatch } from 'react-redux';
import { useEffect } from 'react';
import { Link } from 'react-router-dom';
import './EmployerJobInput.css';

// This component allows an Employer/Recruiter to submit a new job to the app
function EmployerJobInput() {
    const dispatch = useDispatch();
    const skills = useSelector((store) => store.skills);
    const [jobInputData, setJobInputData] = useState({name: '', description: '', city: '', state: '', skills: []});
    const [newSkills, setNewSkills] = useState('');

    const handleChange = (evt) => {
        let skillId = evt.target.value;
        let i = 0;
        if (newSkills.length <= 4) {
            for (let skill of skills) {
                if (skillId === skill.id){
                    console.log("you're adding this skill:", skill.skill_name);
                    setNewSkills([...newSkills, skill.skill_name]);
                }
            }
        }
        if (newSkills.length > 4) {
            alert("You have reached the max of 5 skills");
        }
        setJobInputData({...jobInputData, skills: [...jobInputData.skills, evt.target.value]});
        console.log(">>>>>>>>>>>>>>>>", jobInputData);
    }

    const handleSubmit = (evt) => {
        evt.preventDefault();
        console.log("Everything about to be sent:", jobInputData);

        if (newSkills.length < 4) {
            alert("Please add 5 skills.");
        }
        dispatch({
            type: 'ADD_JOB',
            payload: {jobInputData}
        }); 
    }

    useEffect(() => {
        dispatch({
            type: 'FETCH_SKILLS'
        });
    }, []);

    return (
        <div>
            <Button variant="contained" color="primary" className="backBtn"><Link to="/employer/:id">Back</Link></Button> 
            <p>Helpful hints: <br></br> You will need the job title, job description, the city and state the job is located, the company name, and 5 skills associated with the job (these are chosen from a drop down). Just pick the closest 5 options from the drop down, they don't need to be exact.</p>  
            <div>
                <p>Job Input Form</p>
                <form onSubmit={handleSubmit}>
                    <div className="inputFields">
                        <TextField
                            id="outlined-basic"
                            label="Job Title"
                            variant="outlined"
                            value={jobInputData.name}
                            onChange={(evt) => setJobInputData({...jobInputData, name: evt.target.value})}
                        />
                        <br></br>
                        <TextField
                            id="outlined-basic"
                            label="Job Description"
                            variant="outlined"
                            value={jobInputData.description}
                            onChange={(evt) => setJobInputData({...jobInputData, description: evt.target.value})}
                        />
                        <br></br>
                        <TextField
                            id="outlined-basic"
                            label="City"
                            variant="outlined"
                            value={jobInputData.city}
                            onChange={(evt) => setJobInputData({...jobInputData, city: evt.target.value})}    
                        />
                        <br></br>
                        <TextField
                            id="outlined-basic"
                            label="State"
                            variant="outlined"
                            value={jobInputData.state}
                            onChange={(evt) => setJobInputData({...jobInputData, state: evt.target.value})}
                        />
                    </div>
                    <div className="dropdown">
                        <Select
                            labelId="demo-basic-select-label"
                            id="demo-basic-select"
                            value={jobInputData.skills}
                            onChange={handleChange}
                        >
                            {skills && skills.map((skill) => (
                                <MenuItem key={skill.id} value={skill.id}>{skill.skill_name}</MenuItem>
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
    );
}

export default EmployerJobInput;