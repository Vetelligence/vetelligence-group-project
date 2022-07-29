import EditIcon from '@material-ui/icons/Edit';
import CancelPresentationIcon from '@material-ui/icons/CancelPresentation';
import { Link } from 'react-router-dom';
import { useDispatch } from 'react-redux';

export const JobListItem = ({jobs}) => {
    const dispatch = useDispatch();

    const grabMatchedCandidates = () => {
        dispatch({
            type: 'FETCH_MATCHED_CANDIDATES',
            payload: {id: jobs.id}
        })
    }

    return(
        <div className="jobCard">
            <EditIcon />
            <CancelPresentationIcon/>
            <p className="jobCardText" onClick={grabMatchedCandidates}>Title: {jobs && jobs.job_name}</p>
            {/* <p className="jobCardText">{jobs && jobs.job_description}</p> */}
        </div>
    )
}