const filterVets = (arrOne, arrTwo) => {
    let candidates = []
    console.log('In the filter vets >>>>>>>>>>>>>', arrOne)
    console.log('In the filter vets @@@@@@@@@@@@@@', arrTwo)
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