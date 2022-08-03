const filterVets = (arrOne, arrTwo, arrThree) => {
    let candidates = [] 
    for(let vet of arrOne){
        secondLoop:
        for(let skill of vet.skills){
            for(let jobSkills of arrTwo){
                if(jobSkills === skill){
                    for(let s of arrThree){
                        console.log('++++___++__++__', vet.id, s.user_id)
                        console.log('___+++__++__+_+', s.status)
                        if(vet.status === 'hired'){
                            break secondLoop;
                        }
                        if(vet.id === s.user_id && s.status === 'no longer considered'){
                            console.log('THIS IS THE S.STATUS OYOYOYOYO', s.status)
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