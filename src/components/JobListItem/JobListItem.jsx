import EditIcon from '@material-ui/icons/Edit';
import CancelPresentationIcon from '@material-ui/icons/CancelPresentation';
import { Link } from 'react-router-dom';
import { useDispatch } from 'react-redux';
import { useState } from 'react';

import Modal from '@mui/material/Modal';
import Button from '@mui/material/Button';
import Box from '@mui/material/Box';


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


    return(
        <>
            <div className="jobCard">
                {/* <EditIcon onClick={() => console.log('This is the edit button')} /> */}
                <Button onClick={() => setOpen(!open)}><CancelPresentationIcon /></Button>
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
        </>
    )
}