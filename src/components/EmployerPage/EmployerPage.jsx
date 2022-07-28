import React from 'react';
import EditIcon from '@material-ui/icons/Edit';
import CancelPresentationIcon from '@material-ui/icons/CancelPresentation';
import { Link } from 'react-router-dom';
import { useSelector } from 'react-redux';
import { useEffect } from 'react';
import { useDispatch } from 'react-redux';
import './EmployerPage.css';
import { JobListItem } from '../JobListItem/JobListItem';

// CUSTOM COMPONENTS

import RegisterForm from '../RegisterForm/RegisterForm';

function EmployerPage() {
  const dispatch = useDispatch();
  const user = useSelector((store) => store.user);
  const job = useSelector((store) => store.job);
  console.log(">>>>>>>>>>>>>>>>>", job);

  useEffect(() => {
    dispatch({
      type: 'FETCH_JOB'
    });
  }, [user]);

  return (
    <div className="employerView">
      <div className="profileData">
        <p>{user.first_name} {user.last_name}</p>
        <p>{user.phone_number}</p>
        <p>{user.email}</p>
        <p>{user.city}, {user.state}</p>
      </div>
      <div className="jobsData">
        <p className="jobsDataText">Current Jobs:</p>
        {job[0] && job.map(jobs => <JobListItem key={jobs.id} jobs={jobs}/>)}
      </div>
      <Link to="/jobInput"><button className="addJobBtn">Add Job</button></Link>
      <div className="employeeData">
        <p className="employeeDataText">Current Matched Candidates:</p>
        <div className="employeeCard">
          <div className="topCard">
            <CancelPresentationIcon/>
            <p className="employeeCardText">Name: Joe Snuffy</p>
            <p className="employeeCardText">Skills: Admin, Communication</p>
          </div>
          <div className="middleCard">
            <p className="employeeCardText">Phone: 123-456-1234</p>
            <p className="employeeCardText">Email: j.snuffy@gmail.com</p>
          </div>
          <select className="employeeStatus">
            <option value="matched">Pending</option>
            <option value="selectedForInterview">Selected to Interview</option>
            <option value="Interviewed">Interviewed</option>
            <option value="Hired">Hired</option>
            <option value="notConsidered">No Longer Considered</option>
          </select>
        </div>
      </div>
    </div>
  );
}

export default EmployerPage;
