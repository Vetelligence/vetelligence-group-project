import { useEffect } from 'react';
import { useSelector, useDispatch } from 'react-redux';
import { useParams } from 'react-router-dom';
import Card from '@mui/material/Card';
import CardActions from '@mui/material/CardActions';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';
import Button from '@mui/material/Button';
import Typography from '@mui/material/Typography';
import Box from '@mui/material/Box';


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
    <br></br>
    <br></br>
    <h4>Current Jobs </h4>
    {currentJobs && currentJobs.map(currentJob => (
      <div key = {currentJob.id}>

    <br></br>
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
            Status: {currentJob.status}
            
          </CardActions>
        </Card>

        
        
        
      </div>
    ))}
    </>
  )
}

export default CurrentJob;