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

    const handleChange = (evt) => {
        console.log('changes being made');

        setSkills([...skills, evt.target.value]);
    }

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
                        value={jobInputData.skills}
                        label="Job Name"
                        name="name"
                        onChange={handleChange}
                    >
                        <MenuItem value={'Adapt'}>Adapt</MenuItem>
                        <MenuItem value={'Adaptability'}>Adaptability</MenuItem>
                        <MenuItem value={'Admin'}>Admin</MenuItem>
                        <MenuItem value={'Analyze'}>Analyze</MenuItem>
                        <MenuItem value={'Assessment'}>Assessment</MenuItem>
                        <MenuItem value={'Collaboration'}>Collaboration</MenuItem>
                        <MenuItem value={'Commands'}>Commands</MenuItem>
                        <MenuItem value={'Communication'}>Communication</MenuItem>
                        <MenuItem value={'Community Relations'}>Community Relations</MenuItem>
                        <MenuItem value={'Compromise'}>Compromise</MenuItem>
                        <MenuItem value={'Conduct Liaison'}>Conduct Liaison</MenuItem>
                        <MenuItem value={'Conflict Management'}>Conflict Management</MenuItem>
                        <MenuItem value={'Consultative'}>Consultative</MenuItem>
                        <MenuItem value={'Cooperation'}>Cooperation</MenuItem>
                        <MenuItem value={'Coordinates Activities of SubordinateUnits'}>Coordinates Activities of Subordinate Units</MenuItem>
                        <MenuItem value={'Counseling'}>Counseling</MenuItem>
                        <MenuItem value={'Counterintelligence'}>Counterintelligence</MenuItem>
                        <MenuItem value={'Creative Thinking'}>Creative Thinking</MenuItem>
                        <MenuItem value={'Creativity'}>Creativity</MenuItem>
                        <MenuItem value={'Critical Thinking'}>Critical Thinking</MenuItem>
                        <MenuItem value={'Decision'}>Decision</MenuItem>
                        <MenuItem value={'Decision Making'}>Decision Making</MenuItem>
                        <MenuItem value={'Decision-Making'}>Decision-Making</MenuItem>
                        <MenuItem value={'Dependability'}>Dependability</MenuItem>
                        <MenuItem value={'Designing'}>Designing</MenuItem>
                        <MenuItem value={'Encourage'}>Encourage</MenuItem>
                        <MenuItem value={'Engineering'}>Engineering</MenuItem>
                        <MenuItem value={'Evaluate'}>Evaluate</MenuItem>
                        <MenuItem value={'Formulate'}>Formulate</MenuItem>
                        <MenuItem value={'Improvise'}>Improvise</MenuItem>
                        <MenuItem value={'Intelligence'}>Intelligence</MenuItem>
                        <MenuItem value={'Language'}>Language</MenuItem>
                        <MenuItem value={'Leadership'}>Leadership</MenuItem>
                        <MenuItem value={'Liaison'}>Liaison</MenuItem>
                        <MenuItem value={'Listening'}>Listening</MenuItem>
                        <MenuItem value={'Logistic'}>Logistic</MenuItem>
                        <MenuItem value={'Maintains Liaison'}>Maintains Liaison</MenuItem>
                        <MenuItem value={'Management'}>Management</MenuItem>
                        <MenuItem value={'Motivation'}>Motivation</MenuItem>
                        <MenuItem value={'Negotiation'}>Negotiation</MenuItem>
                        <MenuItem value={'Openness to Criticism'}>Openness to Criticism</MenuItem>
                        <MenuItem value={'Organizational'}>Organizational</MenuItem>
                        <MenuItem value={'Persuasion'}>Persuasion</MenuItem>
                        <MenuItem value={'Planning'}>Planning</MenuItem>
                        <MenuItem value={'Preparation'}>Preparation</MenuItem>
                        <MenuItem value={'Problem Solving'}>Problem Solving</MenuItem>
                        <MenuItem value={'Reliability'}>Reliability</MenuItem>
                        <MenuItem value={'Resolution'}>Resolution</MenuItem>
                        <MenuItem value={'Resourcefulness'}>Resourcefulness</MenuItem>
                        <MenuItem value={'Respond'}>Respond</MenuItem>
                        <MenuItem value={'Responsibility'}>Responsibility</MenuItem>
                        <MenuItem value={'Stress'}>Stress</MenuItem>
                        <MenuItem value={'Stress Management'}>Stress Management</MenuItem>
                        <MenuItem value={'Supervise'}>Supervise</MenuItem>
                        <MenuItem value={'Teamwork'}>Teamwork</MenuItem>
                        <MenuItem value={'Time Critical'}>Time Critical</MenuItem>
                        <MenuItem value={'Time Management'}>Time Management</MenuItem>
                        <MenuItem value={'Time Sensitive'}>Time Sensitive</MenuItem>
                    </Select>
                    <p>Current Selected Skills:
                        <br></br>1 {skills[0]}
                        <br></br>2 {skills[1]}
                        <br></br>3 {skills[2]}
                        <br></br>4 {skills[3]}
                        <br></br>5 {skills[4]}
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