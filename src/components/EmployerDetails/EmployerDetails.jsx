import CancelPresentationIcon from '@material-ui/icons/CancelPresentation';
import { useState } from 'react';
import './EmployerDetails.css';
import { useParams } from 'react-router-dom';
import { useSelector, useDispatch } from 'react-redux';


function EmployerDetails(){
    const params = useParams();
    const dispatch = useDispatch();

    const status = useSelector(store => store.status);

    const [selected, setSelected] = useState('');

    const handleChange = event => {

        console.log(event.target.value);
        setSelected(event.target.value);


        dispatch({
            type: 'ADD_STATUS',
            payload: {
                selected: selected,
                id: id
            }
        })

    }

    

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
          Status: 
          <select className="employeeStatus" value={selected} onChange={handleChange}>
            <option value="Pending">Pending</option>
            <option value="SelectedForInterview">Selected to Interview</option>
            <option value="Interviewed">Interviewed</option>
            <option value="Hired">Hired</option>
            <option value="NotConsidered">No Longer Considered</option>
          </select>
        </div>
      </div>
    
        
      
        
    </>

    )

}

export default EmployerDetails;