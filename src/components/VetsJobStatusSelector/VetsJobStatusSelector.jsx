import { useState } from "react"
import { useDispatch } from "react-redux"


export const VetsJobStatusSelector = ({vet, job}) => {
    const dispatch = useDispatch();
    // const [status, setStatus] = useState(vet.status)

    const handleStatusChange = e => {
        console.log('thi is job', job)
        dispatch({
            type: 'ADD_STATUS',
            payload: {
                jobs_id : job.job.id,
                user_id: vet.id,
                status: e
            }
        })
    }

    return(
        <div>
             Status: 
                <select className="employeeStatus" value={vet.status} onChange={e => handleStatusChange(e.target.value)}>
                    <option value="pending">Pending</option>
                    <option value="selectedToInterview">Selected to Interview</option>
                    <option value="interviewed">Interviewed</option>
                    <option value="Hired">Hired</option>
                    <option value="noLongerConsidered">No Longer Considered</option>
                </select>
        </div>
    )
}