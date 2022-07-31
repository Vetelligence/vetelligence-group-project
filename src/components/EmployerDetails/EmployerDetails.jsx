import CancelPresentationIcon from '@material-ui/icons/CancelPresentation';
import './EmployerDetails.css';

function EmployerDetails(){

    return (

    <>
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
    
        
      
        
    </>

    )

}

export default EmployerDetails;