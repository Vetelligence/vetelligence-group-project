import { useState } from "react"


export const VetsJobStatusSelector = ({vet}) => {
    const [status, setStatus] = useState(vet.status)

    return(
        <div>
             Status: 
                <select className="employeeStatus" value={status} onChange={e => setStatus(e.target.value)}>
                    <option value="pending">Pending</option>
                    <option value="selected to interview">Selected to Interview</option>
                    <option value="interviewed">Interviewed</option>
                    <option value="Hired">Hired</option>
                    <option value="NotConsidered">No Longer Considered</option>
                </select>
        </div>
    )
}