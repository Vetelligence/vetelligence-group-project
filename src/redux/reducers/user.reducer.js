import { combineReducers } from 'redux';


const userReducer = (state = {}, action) => {
  switch (action.type) {
    case 'SET_USER':
      return action.payload;
    case 'UNSET_USER':
      return {};
    default:
      return state;
  }
};

const employersList = (state= [], action) => {
  switch (action.type) {
    case 'SET_EMPLOYER_LIST':
      return action.payload;
    case 'CLEAR_EMPLOYER_LIST':
      return [];
    default:
      return state;
  }
}

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



// user will be on the redux state at:
// state.user
const usersReducer = combineReducers({
  userReducer,
  employersList,
  veteranList
}) ;

export default usersReducer;