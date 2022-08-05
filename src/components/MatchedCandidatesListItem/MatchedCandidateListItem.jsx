import { useSelector } from "react-redux"
import { useEffect, useState } from "react"
import ArrowDropDownIcon from '@mui/icons-material/ArrowDropDown';
import ArrowDropUpIcon from '@mui/icons-material/ArrowDropUp';
import { VetsJobStatusSelector } from "../VetsJobStatusSelector/VetsJobStatusSelector";
// import './MatchedCandidateListItem.css'

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

    return (
        <div>
            <div className="matchedCandidateDropDown">
                {opened? <ArrowDropUpIcon onClick={() => setOpened(!opened)}/> : <ArrowDropDownIcon onClick={() => setOpened(!opened)}/>}
                <p className="employeeCardText">Name: {vet.first_name} {vet.last_name}</p>
                <p className="employeeCardText">Matched Skills: {matchSkills}</p>
            </div>
            { opened ?
                <div className="matchedCandidateText">
                    <p className="employeeCardText">Skills: {vet.skills.map((s, i) => <span key={i}>{s}, </span>)}</p>
                    <p className="employeeCardText">Phone: {vet.phone_number}</p>
                    <p className="employeeCardText">Email: {vet.email}</p>
                    <p className="employeeCardText">City: {vet.city}</p>
                    <p className="employeeCardText">State: {vet.state}</p>
                    <VetsJobStatusSelector job={job} vet={vet}/>
                </div>
                :<></>
            }
        </div>
    );
}