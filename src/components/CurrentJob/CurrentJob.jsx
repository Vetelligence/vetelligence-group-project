import { useEffect } from 'react';
import { useSelector, useDispatch } from 'react-redux';
import Card from '@mui/material/Card';
import CardActions from '@mui/material/CardActions';
import CardContent from '@mui/material/CardContent';
import Typography from '@mui/material/Typography';


function CurrentJob(){
  const dispatch = useDispatch();


  const currentJobs = useSelector(store => store.vetsJobs)

useEffect(() => {
  dispatch({
    type: 'FETCH_VETS_JOBS',
  })
}, []); 
  
  return(

    <div>
      <br></br>
      <br></br>
      <h4>Current Jobs </h4>
      {currentJobs[0] && currentJobs.map(currentJob => (
        <div key={currentJob.id}>
        {currentJob.status === 'noLongerConsidered' ? <> </> :
      <Card sx={{ maxWidth: 345 }}>
            {/* <CardMedia
              component="img"
              height="140"
              image=""
              alt=""
            /> */}
            <CardContent>
              <Typography gutterBottom variant="h5" component="div">
              {currentJob.job_name}
              </Typography>
              <Typography variant="body2" color="text.secondary">
              {currentJob.job_description}
              
              </Typography>
            </CardContent>
            <CardActions>
              Company: {currentJob.company}<br></br>
              Status: {currentJob.status}
              
            </CardActions>
          </Card>      
        }
        </div>
      ))}
    </div>
  );
}

export default CurrentJob;