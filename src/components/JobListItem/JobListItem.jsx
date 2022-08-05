import DeleteForeverIcon from '@mui/icons-material/DeleteForever';
import { Link } from 'react-router-dom';
import { useDispatch } from 'react-redux';
import { useState } from 'react';
import Button from '@mui/material/Button';
import { createTheme, ThemeProvider } from '@mui/material/styles';
import { common } from '@material-ui/core/colors';

export const JobListItem = ({jobs}) => {
    const dispatch = useDispatch();
    const [open, setOpen] = useState(false)
    const handleDelete = () => {
        dispatch({
            type: 'DELETE_FROM_JOB_LIST',
            payload: {id: jobs.id}
        })
        setOpen(!open)
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
        <div>
            <div className="jobCard">
                <ThemeProvider theme={theme}>
                    <Button onClick={() => setOpen(!open)}><DeleteForeverIcon/></Button>
                </ThemeProvider>
                <p className="jobCardText">Job Title: <Link to={`/employer/employer-details/${jobs.id}`} className='job-name-link'>{jobs && jobs.job_name}</Link></p>
            </div>
            {
                open ? 
                <div className='delete-job-from-list-card'>
                    <h5>You are about to delete:<br></br> {jobs.job_name}</h5>
                    <Button color='error' onClick={handleDelete} variant='outlined' sx={{marginRight: 2}}>Delete</Button>
                    <Button onClick={() => setOpen(!open)} variant='outlined'>Cancel</Button>
                </div>
                :
                <></>
            }
        </div>
    );
}