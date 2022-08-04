import React from 'react';
import EditIcon from '@material-ui/icons/Edit';
import CancelPresentationIcon from '@material-ui/icons/CancelPresentation';
import { Link } from 'react-router-dom';
import { useSelector } from 'react-redux';
import { useEffect } from 'react';
import { useDispatch } from 'react-redux';
import './EmployerPage.css';
import { JobListItem } from '../JobListItem/JobListItem';
import RegisterForm from '../RegisterForm/RegisterForm';

// This component shows the dashboard for the given logged in Employer/Recruiter
function EmployerPage() {
  const dispatch = useDispatch();
  const user = useSelector((store) => store.user);
  const job = useSelector((store) => store.job);

  useEffect(() => {
    dispatch({
      type: 'FETCH_JOB'
    });
  }, [user]);

  return (
    <div className="employerView">
      <div className="profileData">
        <p>Name: {user.first_name} {user.last_name}</p>
        <p>Phone: {user.phone_number}</p>
        <p>Email: {user.email}</p>
        <p>{user.city}, {user.state}</p>
      </div>
      <div className="jobsData">
        <p className="jobsDataText">Current Jobs:</p>
        {job[0] && job.map(jobs => <JobListItem key={jobs.id} jobs={jobs}/>)}
      </div>
      <Link to="/jobInput"><button className="addJobBtn">Add Job</button></Link>
    </div>
  );
}

export default EmployerPage;