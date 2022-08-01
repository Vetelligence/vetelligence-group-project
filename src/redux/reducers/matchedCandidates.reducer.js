export const matchedCandidates = (state = [], action) => {
    switch(action.type){
        case 'SET_MATCHED_CANDIDATES':
            return action.payload
        default:
            return state;
    }
}
