import { combineReducers } from 'redux';

//List of all employers
const employerList = (state= [], action) => {
    switch (action.type) {
      case 'SET_EMPLOYER_LIST':
        return action.payload;
      case 'CLEAR_EMPLOYER_LIST':
        return [];
      default:
        return state;
    }
  }
  
//List of all Veterans
const veteranList = (state= [], action) => {
  switch (action.type) {
    case 'SET_VETERAN_LIST':
      return action.payload;
    case 'CLEAR_VETERAN_LIST':
      return [];
    default:
      return state;
  }
}
  
const adminReducer = combineReducers({
  employerList,
  veteranList
});

export default adminReducer;