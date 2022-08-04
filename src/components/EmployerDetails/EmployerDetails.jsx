import { useState, useEffect } from 'react';
import './EmployerDetails.css';
import { useParams } from 'react-router-dom';
import { useDispatch, useSelector } from 'react-redux';


import { MatchedCandidateListItem } from '../MatchedCandidatesListItem/MatchedCandidateListItem';

function EmployerDetails(){
    const {id} = useParams();
    const dispatch = useDispatch();
    
    const job = useSelector(store => store.currentJob)

    const status = useSelector(store => store.status);

    const [selected, setSelected] = useState('');

    useEffect(() => {
      dispatch({
        type: 'FETCH_CURRENT_JOB',
        payload: {id: id}
      })
    }, [id])

    return (

    <>
    <div className='job-details-card'>
      <h2>{job.job && job.job.company}</h2>
      <h3>Job Title:</h3>
      <p>{ job.job && job.job.job_name}</p>
      <h3>Job Description:</h3>
      <p>{job.job && job.job.job_description}</p>
      <div className='current-job-skills'>
        <h3>Skills:</h3>
        {job.job && job.job.skills.map(s => <p className='details-skills'>{s}</p>)}
      </div>
    </div>
    <div className="employeeData">
        <p className="employeeDataText">Current Matched Candidates:</p>
        <div className="employeeCard">
          {job.candidates && job.candidates.map(vet => <MatchedCandidateListItem key={vet.id} vet={vet}/>)}
        </div>
      </div>
    </>
    )

}

export default EmployerDetails;