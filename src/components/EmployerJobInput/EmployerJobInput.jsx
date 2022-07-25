import React from 'react';
import Button from '@mui/material/Button';
import TextField from '@mui/material/TextField';
import Checkbox from '@material-ui/core/Checkbox';
import FormControlLabel from '@material-ui/core/FormControlLabel';
import './EmployerJobInput.css';


function EmployerJobInput() {

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
            <div className="checkBoxes">
                <FormControlLabel
                    control={
                        <Checkbox
                            color="default"
                            inputProps={{ 'aria-label': 'checkbox with default color' }}
                        />
                    }
                    label="Admin"
                />
            </div>
        <Button variant="contained" color="primary" type="Submit">
                Submit
        </Button>
      </form>
    </div>
  )
}

export default EmployerJobInput;