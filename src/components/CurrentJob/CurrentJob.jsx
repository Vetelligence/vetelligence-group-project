import { useEffect } from 'react';
import { useSelector, useDispatch } from 'react-redux';
import { useParams } from 'react-router-dom';


function CurrentJob(){
  const dispatch = useDispatch();
  const params = useParams();

  const currentJobs = useSelector(store => store.currentJob)

useEffect(() => {
  dispatch({
    type: 'FETCH_CURRENT_JOB',
    payload: params.id
  })
}, []); 
  

  return(
    <>
    {currentJobs && currentJobs.map(currentJob => (
      <div key = {currentJob.id}>
        {currentJob.jobs_name}

      </div>
    ))}
    </>
  )
}

export default CurrentJob;