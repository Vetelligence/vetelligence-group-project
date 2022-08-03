


export const VetsJobStatusSelector = ({vet}) => {

    return(
        <div>
             Status: 
                <select className="employeeStatus" value={vet.status} onChange={() => console.log(vet.status)}>
                    <option value="pending">Pending</option>
                    <option value="selected to interview">Selected to Interview</option>
                    <option value="interviewed">Interviewed</option>
                    <option value="Hired">Hired</option>
                    <option value="NotConsidered">No Longer Considered</option>
                </select>
        </div>
    )
}