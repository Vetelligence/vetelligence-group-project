//Logic for veterans and job skills connection. Loops through a veteran's skills,
//then loops through skills assigned to a specific job. If the status is changed to
//hired their info will no longer display to employers. If a Veteran's status is
//changed to no longer considered their info will no longer display to employers.
//If job skills and veteran skills match, the veteran data is added to the employer
//dash/store.
const filterVets = (arrOne, arrTwo, arrThree) => {
    let candidates = [] 
    for(let vet of arrOne){
        secondLoop:
        for(let skill of vet.skills){
            for(let jobSkills of arrTwo){
                if(jobSkills === skill){
                    for(let s of arrThree){
                        if(vet.status === 'hired'){
                            break secondLoop;
                        }
                        if(vet.id === s.user_id && s.status === 'noLongerConsidered'){
                            break secondLoop;
                        }
                        else if(vet.id == s.user_id){
                            vet = {...vet, status: s.status}
                        }  
                    }
                    candidates.push(vet)
                    break secondLoop;
                }
            }
        }
    }
    return candidates
}

module.exports = filterVets;