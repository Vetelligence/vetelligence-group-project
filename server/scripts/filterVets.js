const filterVets = (arrOne, arrTwo) => {
    let candidates = []
    firstLoop: 
    for(let vet of arrOne){
        secondLoop:
        for(let skill of vet.skills){
            for(let jobSkills of arrTwo){
                if(jobSkills === skill){
                    candidates.push(vet)
                    break secondLoop;
                }
            }
        }
    }
    return candidates
}

module.exports = filterVets;