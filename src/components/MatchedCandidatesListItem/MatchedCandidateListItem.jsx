import { useSelector } from "react-redux"
import { useEffect, useState } from "react"
import ArrowDropDownIcon from '@mui/icons-material/ArrowDropDown';
import ArrowDropUpIcon from '@mui/icons-material/ArrowDropUp';

export const MatchedCandidateListItem = ({vet}) => {

    const [opened, setOpened] = useState(false)

    const job = useSelector(store => store.currentJob)
    const matchedSkills = () => {
        let i = 0;
        for(let skill of job.job.skills){
            for(let sk of vet.skills){
                if(sk === skill){
                    i++
                }
            }
        }
        console.log('this is the matched skills amount',i)
        return i
    }
  

    const matchSkills = matchedSkills();

    return(
        <div className="">
            <div className="topCard">
                {opened? <ArrowDropUpIcon onClick={() => setOpened(!opened)}/> : <ArrowDropDownIcon onClick={() => setOpened(!opened)}/>}
                <p  className="employeeCardText">Name: {vet.first_name} {vet.last_name}</p> 
                <p className="employeeCardText"> Matched Skills: {matchSkills}</p>
            </div>
            { opened ?
                <div className="middleCard">
                    <p className="employeeCardText">Skills: {vet.skills.map(s => <span>{s}, </span>)}</p>
                    <p className="employeeCardText">Phone: {vet.phone_number}</p>
                    <p className="employeeCardText">Email: {vet.email}</p>
                Status: 
                <select className="employeeStatus" >
                    <option value="Pending">Pending</option>
                    <option value="SelectedForInterview">Selected to Interview</option>
                    <option value="Interviewed">Interviewed</option>
                    <option value="Hired">Hired</option>
                    <option value="NotConsidered">No Longer Considered</option>
                </select>
                </div>
                :<></>
            }

        
        </div>
    )
}