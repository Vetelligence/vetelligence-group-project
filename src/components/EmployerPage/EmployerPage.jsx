import React from 'react';
// import EditIcon from '@material-ui/icons/Edit';
import CancelPresentationIcon from '@material-ui/icons/CancelPresentation';
import { Link } from 'react-router-dom';
import './EmployerPage.css';

// CUSTOM COMPONENTS
import RegisterForm from '../RegisterForm/RegisterForm';

function EmployerPage() {


  return (
    <div className="employerView">
      <div className="profileData">
        <p>Joe Somebody</p>
        <p>j.somebody@company.net</p>
        <p>123-456-7890</p>
        <p>123 Street Rd, Suite #3, Minneapolis, MN 55123</p>
      </div>
      <div className="jobsData">
        <p className="jobsDataText">Current Jobs:</p>
        <div className="jobCard">
          {/* <EditIcon/> */}
          <CancelPresentationIcon/>
          <p className="jobCardText">Software Engineer</p>
          <p className="jobCardText">Build amazing apps with emerging technologies.</p>
        </div>
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
