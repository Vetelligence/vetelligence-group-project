//Holds all jobs on the app
const jobReducer = (state = [], action) => {
    switch (action.type) {
        case 'SET_JOB':
            return action.payload;
        default:
            return state;
    }
}

export default jobReducer;