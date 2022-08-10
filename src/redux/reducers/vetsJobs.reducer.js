//Holds the jobs by veteran ID
export const vetsJobs = (state = [], action) => {
    switch(action.type){
        case "SET_VETS_JOBS":
            return action.payload
        default:
            return state
    }
}