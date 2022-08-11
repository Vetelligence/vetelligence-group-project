import { combineReducers } from 'redux';

//Filters MOSs by military branch
const mosForBranch = (state = [], action) => {
    switch (action.type) {
        case 'SET_MOS':
            return action.payload;
        case 'CLEAR_MOS':
            return [];
        default:
            return state;
    }
}

export default combineReducers({
    mosForBranch
}); 