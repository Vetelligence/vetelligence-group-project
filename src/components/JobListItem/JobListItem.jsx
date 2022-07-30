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

    const grabMatchedCandidates = () => {
        dispatch({
            type: 'FETCH_MATCHED_CANDIDATES',
            payload: {id: jobs.id}
        })
    }
    const [open, setOpen] = useState(false);
    const handleOpen = () => {
      setOpen(true);
    };
    const handleClose = () => {
      setOpen(false);
    };
    const style = {
        position: 'absolute',
        top: '50%',
        left: '50%',
        transform: 'translate(-50%, -50%)',
        width: 400,
        bgcolor: 'background.paper',
        border: '2px solid #000',
        boxShadow: 24,
        pt: 2,
        px: 4,
        pb: 3,
      };

    return(
        <div className="jobCard">
            <EditIcon />
            <Button onClick={handleOpen}><CancelPresentationIcon /></Button>
          

            <p className="jobCardText" onClick={grabMatchedCandidates}>Job Title: {jobs && jobs.job_name}</p>
        </div>
    )
}