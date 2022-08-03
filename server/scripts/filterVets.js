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